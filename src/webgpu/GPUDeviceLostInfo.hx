package webgpu;

extern interface GPUDeviceLostInfo {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):"GPUDeviceLostInfo";

	var reason(default, null):GPUDeviceLostReason;
	var message(default, null):String;
}
