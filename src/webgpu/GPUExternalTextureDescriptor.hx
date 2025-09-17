package webgpu;

extern interface GPUExternalTextureDescriptor extends GPUObjectDescriptorBase {
	/**
	 * The video source to import the external texture from. Source size is determined as described
	 * by the external source dimensions table.
	 */
	var source:haxe.extern.EitherType<, haxe.extern.EitherType<HTMLVideoElement, VideoFrame>>;

	/**
	 * The color space the image contents of {@link GPUExternalTextureDescriptor#source} will be
	 * converted into when reading.
	 */
	@:optional var colorSpace:PredefinedColorSpace;
}
