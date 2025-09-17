package webgpu;

extern class GPUBindGroupDescriptor extends GPUObjectDescriptorBase {
	/**
	 * The {@link GPUBindGroupLayout} the entries of this bind group will conform to.
	 */
	var layout:GPUBindGroupLayout;

	/**
	 * A list of entries describing the resources to expose to the shader for each binding
	 * described by the {@link GPUBindGroupDescriptor#layout}.
	 */
	var entries:Iterable<GPUBindGroupEntry>;
}
