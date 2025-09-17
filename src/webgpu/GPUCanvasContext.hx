package webgpu;

extern interface GPUCanvasContext {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):"GPUCanvasContext";

	var canvas(default, null):haxe.extern.EitherType<, haxe.extern.EitherType<HTMLCanvasElement, OffscreenCanvas>>;

	/**
	 * Configures the context for this canvas.
	 * This clears the drawing buffer to transparent black (in [$Replace the drawing buffer$]).
	 */
	function configure(configuration:GPUCanvasConfiguration):{};

	/**
	 * Removes the context configuration. Destroys any textures produced while configured.
	 */
	function unconfigure():{};

	/**
	 * Returns the context configuration.
	 */
	function getConfiguration():GPUCanvasConfiguration;

	/**
	 * Get the {@link GPUTexture} that will be composited to the document by the {@link GPUCanvasContext}
	 * next.
	 * Note: The same {@link GPUTexture} object will be returned by every
	 * call to {@link GPUCanvasContext#getCurrentTexture} until "[$Expire the current texture$]"
	 * runs, even if that {@link GPUTexture} is destroyed, failed validation, or failed to allocate.
	 */
	function getCurrentTexture():GPUTexture;
}
