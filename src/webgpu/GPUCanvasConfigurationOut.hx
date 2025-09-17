package webgpu;

extern class GPUCanvasConfigurationOut extends Required<Omit<GPUCanvasConfiguration, "toneMapping">> {
	/**
	 * {@inheritDoc GPUCanvasConfiguration.viewFormats} 
	 */
	var viewFormats:Array<GPUTextureFormat>;

	/**
	 * {@inheritDoc GPUCanvasConfiguration.toneMapping}
	 */
	@:optional var toneMapping:GPUCanvasToneMapping;
}
