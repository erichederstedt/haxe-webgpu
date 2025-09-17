package webgpu;

extern class GPUFragmentState extends GPUProgrammableStage {
	/**
	 * A list of {@link GPUColorTargetState} defining the formats and behaviors of the color targets
	 * this pipeline writes to.
	 */
	var targets:haxe.extern.EitherType<Iterable, haxe.extern.EitherType<GPUColorTargetState, {}>>;
}
