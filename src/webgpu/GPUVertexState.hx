package webgpu;

extern class GPUVertexState extends GPUProgrammableStage {
	/**
	 * A list of {@link GPUVertexBufferLayout}s, each defining the layout of vertex attribute data in a
	 * vertex buffer used by this pipeline.
	 */
	@:optional var buffers:haxe.extern.EitherType<Iterable, haxe.extern.EitherType<GPUVertexBufferLayout, {}>>;
}
