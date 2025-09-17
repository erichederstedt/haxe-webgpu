package webgpu;

extern class GPURenderBundleEncoderDescriptor extends GPURenderPassLayout {
	/**
	 * If `true`, indicates that the render bundle does not modify the depth component of the
	 * {@link GPURenderPassDepthStencilAttachment} of any render pass the render bundle is executed
	 * in.
	 * See read-only depth-stencil.
	 */
	@:optional var depthReadOnly:Bool;

	/**
	 * If `true`, indicates that the render bundle does not modify the stencil component of the
	 * {@link GPURenderPassDepthStencilAttachment} of any render pass the render bundle is executed
	 * in.
	 * See read-only depth-stencil.
	 */
	@:optional var stencilReadOnly:Bool;
}
