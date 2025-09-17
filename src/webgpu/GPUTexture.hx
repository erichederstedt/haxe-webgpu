package webgpu;

extern interface GPUTexture extends GPUObjectBase {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):"GPUTexture";

	var width(default, null):GPUIntegerCoordinateOut;
	var height(default, null):GPUIntegerCoordinateOut;
	var depthOrArrayLayers(default, null):GPUIntegerCoordinateOut;
	var mipLevelCount(default, null):GPUIntegerCoordinateOut;
	var sampleCount(default, null):GPUSize32Out;
	var dimension(default, null):GPUTextureDimension;
	var format(default, null):GPUTextureFormat;
	var usage(default, null):GPUFlagsConstant;

	/**
	 * Creates a {@link GPUTextureView}.
	 * @link GPUTextureView} to create.
	 */
	function createView(?descriptor:GPUTextureViewDescriptor):GPUTextureView;

	/**
	 * Destroys the {@link GPUTexture}.
	 */
	function destroy():{};
}
