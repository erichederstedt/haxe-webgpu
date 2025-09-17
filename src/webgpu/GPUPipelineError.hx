package webgpu;

extern class GPUPipelineError extends DOMException {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):GPUPipelineError;

	var reason(default, null):GPUPipelineErrorReason;
}
