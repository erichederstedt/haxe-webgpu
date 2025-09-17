package webgpu;

extern interface GPUShaderModule extends GPUObjectBase {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):"GPUShaderModule";

	/**
	 * Returns any messages generated during the {@link GPUShaderModule}'s compilation.
	 * The locations, order, and contents of messages are implementation-defined
	 * In particular, messages may not be ordered by {@link GPUCompilationMessage#lineNum}.
	 */
	function getCompilationInfo():Promise<GPUCompilationInfo>;
}
