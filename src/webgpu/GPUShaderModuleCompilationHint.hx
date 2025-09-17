package webgpu;

extern class GPUShaderModuleCompilationHint {
	var entryPoint:String;

	/**
	 * A {@link GPUPipelineLayout} that the {@link GPUShaderModule} may be used with in a future
	 * {@link GPUDevice#createComputePipeline()} or {@link GPUDevice#createRenderPipeline} call.
	 * If set to {@link GPUAutoLayoutMode} `"auto"` the layout will be the [$default pipeline layout$]
	 * for the entry point associated with this hint will be used.
	 */
	@:optional var layout:haxe.extern.EitherType<, haxe.extern.EitherType<GPUPipelineLayout, GPUAutoLayoutMode>>;
}
