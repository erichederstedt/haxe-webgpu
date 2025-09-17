package webgpu;

extern class GPUCompilationMessage {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):GPUCompilationMessage;

	var message(default, null):String;
	var type(default, null):GPUCompilationMessageType;
	var lineNum(default, null):Float;
	var linePos(default, null):Float;
	var offset(default, null):Float;
	var length(default, null):Float;
}
