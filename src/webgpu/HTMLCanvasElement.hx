package webgpu;

extern class HTMLCanvasElement {
	function getContext(contextId:haxe.extern.EitherType<htmlcanvaselement.ContextId, String>):GPUCanvasContext;
}
