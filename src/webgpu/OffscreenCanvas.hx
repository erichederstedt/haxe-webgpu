package webgpu;

extern class OffscreenCanvas {
	function getContext(contextId:haxe.extern.EitherType<offscreencanvas.ContextId, String>):GPUCanvasContext;
}
