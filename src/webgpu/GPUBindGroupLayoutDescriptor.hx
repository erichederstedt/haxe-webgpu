package webgpu;

extern class GPUBindGroupLayoutDescriptor extends GPUObjectDescriptorBase {
	/**
	 * A list of entries describing the shader resource bindings for a bind group.
	 */
	var entries:Iterable<GPUBindGroupLayoutEntry>;
}
