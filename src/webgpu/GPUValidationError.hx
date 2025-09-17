package webgpu;

extern class GPUValidationError extends GPUError {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):GPUValidationError;
}
