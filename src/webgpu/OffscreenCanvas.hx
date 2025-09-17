package webgpu;

extern interface OffscreenCanvas {
	function getContext(contextId:haxe.extern.EitherType<offscreencanvas.ContextId,>):GPUCanvasContext;
	}
