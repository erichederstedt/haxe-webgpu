package webgpu;

extern class GPUDepthStencilState {
	/**
	 * The {@link GPUTextureViewDescriptor#format} of {@link GPURenderPassDescriptor#depthStencilAttachment}
	 * this {@link GPURenderPipeline} will be compatible with.
	 */
	var format:GPUTextureFormat;

	/**
	 * Indicates if this {@link GPURenderPipeline} can modify
	 * {@link GPURenderPassDescriptor#depthStencilAttachment} depth values.
	 */
	@:optional var depthWriteEnabled:Bool;

	/**
	 * The comparison operation used to test fragment depths against
	 * {@link GPURenderPassDescriptor#depthStencilAttachment} depth values.
	 */
	@:optional var depthCompare:GPUCompareFunction;

	/**
	 * Defines how stencil comparisons and operations are performed for front-facing primitives.
	 */
	@:optional var stencilFront:GPUStencilFaceState;

	/**
	 * Defines how stencil comparisons and operations are performed for back-facing primitives.
	 */
	@:optional var stencilBack:GPUStencilFaceState;

	/**
	 * Bitmask controlling which {@link GPURenderPassDescriptor#depthStencilAttachment} stencil value
	 * bits are read when performing stencil comparison tests.
	 */
	@:optional var stencilReadMask:GPUStencilValue;

	/**
	 * Bitmask controlling which {@link GPURenderPassDescriptor#depthStencilAttachment} stencil value
	 * bits are written to when performing stencil operations.
	 */
	@:optional var stencilWriteMask:GPUStencilValue;

	/**
	 * Constant depth bias added to each triangle fragment. See [$biased fragment depth$] for details.
	 */
	@:optional var depthBias:GPUDepthBias;

	/**
	 * Depth bias that scales with the triangle fragment’s slope. See [$biased fragment depth$] for details.
	 */
	@:optional var depthBiasSlopeScale:Float;

	/**
	 * The maximum depth bias of a triangle fragment. See [$biased fragment depth$] for details.
	 */
	@:optional var depthBiasClamp:Float;
}
