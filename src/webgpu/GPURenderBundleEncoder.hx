package webgpu;

extern interface GPURenderBundleEncoder extends GPUObjectBase extends GPUCommandsMixin extends GPUDebugCommandsMixin extends GPUBindingCommandsMixin
		extends GPURenderCommandsMixin {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):"GPURenderBundleEncoder";

	/**
	 * Completes recording of the render bundle commands sequence.
	 * 	descriptor:
	 */
	function finish(?descriptor:GPURenderBundleDescriptor):GPURenderBundle;
}
