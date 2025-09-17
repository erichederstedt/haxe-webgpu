package webgpu;

extern class GPUPipelineBase {
	/**
	 * Gets a {@link GPUBindGroupLayout} that is compatible with the {@link GPUPipelineBase}'s
	 * {@link GPUBindGroupLayout} at `index`.
	 * @link GPUPipelineLayout}.`[[bindGroupLayouts]]`
	 * 	sequence.
	 */
	function getBindGroupLayout(index:Float):GPUBindGroupLayout;
}
