package webgpu;

extern interface GPURenderPassLayout extends GPUObjectDescriptorBase {
	/**
	 * A list of the {@link GPUTextureFormat}s of the color attachments for this pass or bundle.
	 */
	var colorFormats:haxe.extern.EitherType<Iterable, haxe.extern.EitherType<GPUTextureFormat, {}>>;
}
