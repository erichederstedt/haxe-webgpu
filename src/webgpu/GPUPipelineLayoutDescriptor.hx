package webgpu;

extern interface GPUPipelineLayoutDescriptor extends GPUObjectDescriptorBase {
	/**
	 * A list of optional {@link GPUBindGroupLayout}s the pipeline will use. Each element corresponds
	 * to a @group attribute in the {@link GPUShaderModule}, with the `N`th element corresponding
	 * with `@group(N)`.
	 */
	var bindGroupLayouts:haxe.extern.EitherType<Iterable, haxe.extern.EitherType<GPUBindGroupLayout, {}>>;
}
