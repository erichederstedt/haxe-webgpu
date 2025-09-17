package webgpu;

extern interface GPUComputePipelineDescriptor extends GPUPipelineDescriptorBase {
	/**
	 * Describes the compute shader entry point of the pipeline.
	 */
	var compute:GPUProgrammableStage;
}
