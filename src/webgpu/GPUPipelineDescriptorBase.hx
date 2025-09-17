package webgpu;

extern class GPUPipelineDescriptorBase extends GPUObjectDescriptorBase {
	/**
	 * The {@link GPUPipelineLayout} for this pipeline, or {@link GPUAutoLayoutMode} `"auto"` to generate
	 * the pipeline layout automatically.
	 * Note: If {@link GPUAutoLayoutMode} `"auto"` is used the pipeline cannot share {@link GPUBindGroup}s
	 * with any other pipelines.
	 */
	var layout:haxe.extern.EitherType<, haxe.extern.EitherType<GPUPipelineLayout, GPUAutoLayoutMode>>;
}
