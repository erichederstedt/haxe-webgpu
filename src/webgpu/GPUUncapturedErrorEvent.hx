package webgpu;

extern interface GPUUncapturedErrorEvent extends Event {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):"GPUUncapturedErrorEvent";

	var error(default, null):GPUError;
}
