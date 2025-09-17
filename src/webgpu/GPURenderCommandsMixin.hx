package webgpu;

extern class GPURenderCommandsMixin {
	/**
	 * Sets the current {@link GPURenderPipeline}.
	 */
	function setPipeline(pipeline:GPURenderPipeline):{};

	/**
	 * Sets the current index buffer.
	 */
	function setIndexBuffer(buffer:GPUBuffer, indexFormat:GPUIndexFormat, ?offset:GPUSize64, ?size:GPUSize64):{};

	/**
	 * Sets the current vertex buffer for the given slot.
	 */
	function setVertexBuffer(slot:GPUIndex32, buffer:haxe.extern.EitherType<, haxe.extern.EitherType<GPUBuffer, {}>>, ?offset:GPUSize64, ?size:GPUSize64):{};

	/**
	 * Draws primitives.
	 * See {@link https://www.w3.org/TR/webgpu/#rendering-operations} for the detailed specification.
	 */
	function draw(vertexCount:GPUSize32, ?instanceCount:GPUSize32, ?firstVertex:GPUSize32, ?firstInstance:GPUSize32):{};

	function drawIndexed(indexCount:GPUSize32, ?instanceCount:GPUSize32, ?firstIndex:GPUSize32, ?baseVertex:GPUSignedOffset32, ?firstInstance:GPUSize32):{};
	function drawIndirect(indirectBuffer:GPUBuffer, indirectOffset:GPUSize64):{};
	function drawIndexedIndirect(indirectBuffer:GPUBuffer, indirectOffset:GPUSize64):{};
}
