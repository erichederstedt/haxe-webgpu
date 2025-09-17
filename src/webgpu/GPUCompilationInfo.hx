package webgpu;

extern class GPUCompilationInfo {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):GPUCompilationInfo;

	var messages(default, null):ReadonlyArray<GPUCompilationMessage>;
}
