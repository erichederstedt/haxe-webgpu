package webgpu;

import js.lib.Promise;
import webgpu.WebgpuTypeDefs;

extern class GPUAdapter {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):GPUAdapter;

	var features(default, null):GPUSupportedFeatures;
	var limits(default, null):GPUSupportedLimits;
	var info(default, null):GPUAdapterInfo;

	/**
	 * Requests a device from the adapter.
	 * This is a one-time action: if a device is returned successfully,
	 * the adapter becomes {@link adapter#[[state]]#"consumed"}.
	 * @link GPUDevice} to request.
	 */
	function requestDevice(?descriptor:GPUDeviceDescriptor):Promise<GPUDevice>;
}
