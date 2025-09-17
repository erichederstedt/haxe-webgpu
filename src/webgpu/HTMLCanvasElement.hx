package webgpu;

extern interface HTMLCanvasElement {
	function getContext(contextId:haxe.extern.EitherType<htmlcanvaselement.ContextId,>):GPUCanvasContext;
	}
