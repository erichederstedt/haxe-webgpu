import { InterfaceDeclaration, Project } from "ts-morph";
// npm install typescript ts-morph ts-node

const project = new Project({
    tsConfigFilePath: "tsconfig.json",
    compilerOptions: {
        allowJs: false,
        declaration: true,
        skipLibCheck: true,
    },
});

const sourceFile = project.addSourceFileAtPath("./base/index.d.ts");

function mapType(tsType: string): string {
    if (tsType.startsWith('"') && tsType.endsWith('"'))
        tsType = tsType.slice(1, tsType.length - 1);

    // crude example, you’ll want a real mapping
    switch (tsType) {
        case "number":
            return "Float";
        case "string":
            return "String";
        case "boolean":
            return "Bool";
        case "undefined":
            return "Void";
        case "Uint32Array<ArrayBufferLike>":
            return "Uint32Array";
        case "Int32Array<ArrayBufferLike>":
            return "Int32Array";
        case "Uint16Array<ArrayBufferLike>":
            return "Uint16Array";
        case "Int16Array<ArrayBufferLike>":
            return "Int16Array";
        case "Uint8Array<ArrayBufferLike>":
            return "Uint8Array";
        case "Int8Array<ArrayBufferLike>":
            return "Int8Array";

        default:
            // console.log("Cannot map type: " + tsType)
            return tsType;
    }
}

function parseInterfaceBody(
    interfaceDec: InterfaceDeclaration,
    output: { text: string }
) {
    // console.log(interfaceDec.getName());
    const properties = interfaceDec.getProperties();
    for (let i = 0; i < properties.length; i++) {
        const element = properties[i];
        const name = element.getName();
        const type = element.getType();
        const typeName = type.isStringLiteral() ? "String" : mapType(element.getType().getText());
        // console.log('   Property: ' + name + ', kind: ' + typeName);
        output.text += "    public var " + name + ":" + typeName + ";\n";
    }

    const methods = interfaceDec.getMethods();
    for (let i = 0; i < methods.length; i++) {
        const element = methods[i];
        const name = element.getName();
        const returnTypeName = mapType(element.getReturnType().getText());
        const parameterTypeNames: Array<{ name: string; typeName: string }> =
            element.getParameters().map((p) => {
                const type = p.getType();
                const aliasSymbol = type.getAliasSymbol();
                if (aliasSymbol) {
                    let name = "";

                    if (p.isOptional())
                        name += '?';

                    name += p.getName();

                    return {
                        name: name,
                        typeName: mapType(aliasSymbol.getName()),
                    };
                }
                else if (type.isUnion()) {
                    const unionTypes = type.getUnionTypes();
                    const hasNull = unionTypes.some(t => t.isNull());
                    const hasUndefined = unionTypes.some(t => t.isUndefined());
                    const realTypes = unionTypes.filter(
                        t => !t.isNull() && !t.isUndefined()
                    );

                    let typeName = "";
                    if (hasUndefined)
                        typeName += '?';
                    if (hasNull)
                        typeName += 'Null<';

                    let isFirst = true;
                    for (let i = 0; i < realTypes.length; i++) {
                        const realType = realTypes[i];
                        const isLast = i == (realTypes.length - 1);

                        if (!isFirst) {
                            typeName += ', ';
                        }

                        if (!isLast) {
                            typeName += 'haxe.extern.EitherType<'
                        }

                        typeName += mapType(realType.getText()); // mapType handles string-literal to non-literal conversion

                        if (isLast) {
                            for (let index = 0; index < (realTypes.length - 1); index++) {
                                typeName += '>';
                            }
                        }

                        isFirst = false;
                    }

                    if (hasNull)
                        typeName += '>';

                    // console.log(typeName);

                    return {
                        name: p.getName(),
                        typeName: typeName,
                    };
                }
                else {
                    let name = "";

                    if (p.isOptional())
                        name += '?';

                    name += p.getName();

                    return {
                        name: name,
                        typeName: mapType(p.getType().getText()),
                    };
                }
            });
        // console.log('   Method: ' + element.getSignature().getDeclaration().getText());
        output.text += "    public function " + name + "(";
        let firstParam = true;
        for (const parameterTypeName of parameterTypeNames) {
            if (!firstParam) output.text += ", ";
            firstParam = false;

            output.text += parameterTypeName.name + ":" + parameterTypeName.typeName;
        }
        output.text += "):" + returnTypeName + ";\n";
    }
}

function parseInterfaceParent(
    interfaceDec: InterfaceDeclaration,
    output: { text: string },
    hasParsed: Array<InterfaceDeclaration>
) {
    if (hasParsed.includes(interfaceDec)) return;

    for (const e of interfaceDec.getExtends()) {
        const type = e.getType();
        const symbol = type.getSymbol();
        if (symbol) {
            const parentDec = symbol.getDeclarations()[0] as InterfaceDeclaration;
            if (parentDec) {
                parseInterfaceParent(parentDec, output, hasParsed);
            }
        }
    }

    output.text += "// Inherits from " + interfaceDec.getName() + "\n";
    parseInterfaceBody(interfaceDec, output);

    hasParsed.push(interfaceDec);

    /*
      console.log(interfaceDec.getName());
      const properties = interfaceDec.getProperties();
      for (let i = 0; i < properties.length; i++) {
          const element = properties[i];
          console.log('   Property: ' + element.getName() + ', kind: ' + element.getKindName());
      }
      classDef.properties.push(...properties);
  
      const methods = interfaceDec.getMethods();
      for (let i = 0; i < methods.length; i++) {
          const element = methods[i];
          console.log('   Method: ' + element.getSignature().getDeclaration().getText());
      }
      */
}

function parseInterfaceBase(interfaceDec: InterfaceDeclaration) {
    let output = { text: "" };
    output.text += "extern class " + interfaceDec.getName() + "{\n";

    for (const e of interfaceDec.getExtends()) {
        const type = e.getType();
        const symbol = type.getSymbol();
        if (symbol) {
            const parentDec = symbol.getDeclarations()[0] as InterfaceDeclaration;
            if (parentDec) {
                parseInterfaceParent(parentDec, output, []);
            }
        }
    }

    if (interfaceDec.getExtends().length > 0)
        output.text += "// Actual " + interfaceDec.getName() + " code\n";
    parseInterfaceBody(interfaceDec, output);

    output.text += "}\n";

    /*
      console.log(interfaceDec.getName());
      const properties = interfaceDec.getProperties();
      for (let i = 0; i < properties.length; i++) {
          const element = properties[i];
          console.log('   Property: ' + element.getName() + ', kind: ' + element.getKindName());
      }
      classDef.properties.push(...properties);
  
      const methods = interfaceDec.getMethods();
      for (let i = 0; i < methods.length; i++) {
          const element = methods[i];
          console.log('   Method: ' + element.getSignature().getDeclaration().getText());
      }
      */

    console.log("/////////////output/////////////");
    console.log(output.text);
}

// console.log(sourceFile.getStatements().map(s => s.getKindName()));
parseInterfaceBase(sourceFile.getInterface("GPURenderBundleEncoder"));
