package webgpu;

extern interface GPUComputePassDescriptor extends GPUObjectDescriptorBase {
	/**
	 * Defines which timestamp values will be written for this pass, and where to write them to.
	 */
	@:optional var timestampWrites:GPUComputePassTimestampWrites;
}
