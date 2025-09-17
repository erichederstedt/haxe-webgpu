package webgpu;

extern class GPURenderPassEncoder extends GPUObjectBase extends GPUCommandsMixin extends GPUDebugCommandsMixin extends GPUBindingCommandsMixin
		extends GPURenderCommandsMixin {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):GPURenderPassEncoder;

	/**
	 * Sets the viewport used during the rasterization stage to linearly map from
	 * NDC|normalized device coordinates to viewport coordinates.
	 */
	function setViewport(x:Float, y:Float, width:Float, height:Float, minDepth:Float, maxDepth:Float):{};

	/**
	 * Sets the scissor rectangle used during the rasterization stage.
	 * After transformation into viewport coordinates any fragments which fall outside the scissor
	 * rectangle will be discarded.
	 */
	function setScissorRect(x:GPUIntegerCoordinate, y:GPUIntegerCoordinate, width:GPUIntegerCoordinate, height:GPUIntegerCoordinate):{};

	/**
	 * Sets the constant blend color and alpha values used with {@link GPUBlendFactor} `"constant"`
	 * and {@link GPUBlendFactor} `"one-minus-constant"` {@link GPUBlendFactor}s.
	 */
	function setBlendConstant(color:GPUColor):{};

	/**
	 * Sets the RenderState.`[[stencilReference]]` value used during stencil tests with
	 * the {@link GPUStencilOperation} `"replace"` {@link GPUStencilOperation}.
	 */
	function setStencilReference(reference:GPUStencilValue):{};

	function beginOcclusionQuery(queryIndex:GPUSize32):{};
	function endOcclusionQuery():{};

	/**
	 * Executes the commands previously recorded into the given {@link GPURenderBundle}s as part of
	 * this render pass.
	 * When a {@link GPURenderBundle} is executed, it does not inherit the render pass's pipeline, bind
	 * groups, or vertex and index buffers. After a {@link GPURenderBundle} has executed, the render
	 * pass's pipeline, bind group, and vertex/index buffer state is cleared
	 * (to the initial, empty values).
	 * Note: The state is cleared, not restored to the previous state.
	 * This occurs even if zero {@link GPURenderBundle | GPURenderBundles} are executed.
	 */
	function executeBundles(bundles:Iterable<GPURenderBundle>):{};

	/**
	 * Completes recording of the render pass commands sequence.
	 */
	function end():{};
}
