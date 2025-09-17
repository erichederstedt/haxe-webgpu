package webgpu;

extern interface GPURenderPassDescriptor extends GPUObjectDescriptorBase {
	/**
	 * The set of {@link GPURenderPassColorAttachment} values in this sequence defines which
	 * color attachments will be output to when executing this render pass.
	 * Due to compatible usage list|usage compatibility, no color attachment
	 * may alias another attachment or any resource used inside the render pass.
	 */
	var colorAttachments:haxe.extern.EitherType<Iterable, haxe.extern.EitherType<GPURenderPassColorAttachment, {}>>;
}
