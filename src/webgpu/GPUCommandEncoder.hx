package webgpu;

extern class GPUCommandEncoder extends GPUObjectBase extends GPUCommandsMixin extends GPUDebugCommandsMixin {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):GPUCommandEncoder;

	/**
	 * Begins encoding a render pass described by `descriptor`.
	 * @link GPURenderPassEncoder} to create.
	 */
	function beginRenderPass(descriptor:GPURenderPassDescriptor):GPURenderPassEncoder;

	function beginComputePass(?descriptor:GPUComputePassDescriptor):GPUComputePassEncoder;

	/**
	 * Shorthand, equivalent to {@link GPUCommandEncoder#copyBufferToBuffer}.
	 * Encode a command into the {@link GPUCommandEncoder} that copies data from a sub-region of a
	 * {@link GPUBuffer} to a sub-region of another {@link GPUBuffer}.
	 * @link GPUBuffer} to copy from.
	 * @link GPUBuffer} to copy to.
	 */
	function copyBufferToBuffer(source:GPUBuffer, destination:GPUBuffer, ?size:GPUSize64):{};

	/**
	 * Shorthand, equivalent to {@link GPUCommandEncoder#copyBufferToBuffer}.
	 * Encode a command into the {@link GPUCommandEncoder} that copies data from a sub-region of a
	 * {@link GPUBuffer} to a sub-region of another {@link GPUBuffer}.
	 * @link GPUBuffer} to copy from.
	 * @link GPUBuffer} to copy to.
	 */
	function copyBufferToBuffer(source:GPUBuffer, sourceOffset:GPUSize64, destination:GPUBuffer, destinationOffset:GPUSize64, ?size:GPUSize64):{};

	/**
	 * Encode a command into the {@link GPUCommandEncoder} that copies data from a sub-region of a
	 * {@link GPUBuffer} to a sub-region of one or multiple continuous texture subresources.
	 */
	function copyBufferToTexture(source:GPUTexelCopyBufferInfo, destination:GPUTexelCopyTextureInfo, copySize:GPUExtent3DStrict):{};

	/**
	 * Encode a command into the {@link GPUCommandEncoder} that copies data from a sub-region of one or
	 * multiple continuous texture subresources to a sub-region of a {@link GPUBuffer}.
	 */
	function copyTextureToBuffer(source:GPUTexelCopyTextureInfo, destination:GPUTexelCopyBufferInfo, copySize:GPUExtent3DStrict):{};

	/**
	 * Encode a command into the {@link GPUCommandEncoder} that copies data from a sub-region of one
	 * or multiple contiguous texture subresources to another sub-region of one or
	 * multiple continuous texture subresources.
	 */
	function copyTextureToTexture(source:GPUTexelCopyTextureInfo, destination:GPUTexelCopyTextureInfo, copySize:GPUExtent3DStrict):{};

	/**
	 * Encode a command into the {@link GPUCommandEncoder} that fills a sub-region of a
	 * {@link GPUBuffer} with zeros.
	 * @link GPUBuffer} to clear.
	 */
	function clearBuffer(buffer:GPUBuffer, ?offset:GPUSize64, ?size:GPUSize64):{};

	/**
	 * Resolves query results from a {@link GPUQuerySet} out into a range of a {@link GPUBuffer}.
	 * 	querySet:
	 * 	firstQuery:
	 * 	queryCount:
	 * 	destination:
	 * 	destinationOffset:
	 */
	function resolveQuerySet(querySet:GPUQuerySet, firstQuery:GPUSize32, queryCount:GPUSize32, destination:GPUBuffer, destinationOffset:GPUSize64):{};

	/**
	 * Completes recording of the commands sequence and returns a corresponding {@link GPUCommandBuffer}.
	 * 	descriptor:
	 */
	function finish(?descriptor:GPUCommandBufferDescriptor):GPUCommandBuffer;
}
