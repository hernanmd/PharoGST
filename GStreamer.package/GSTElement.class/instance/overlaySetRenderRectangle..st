actions
overlaySetRenderRectangle: aRectangle
	| rect |
	rect := ((aRectangle origin x asInteger)@(aRectangle origin y asInteger)) extent: ((aRectangle extent x asInteger)@(aRectangle extent y asInteger)).

	^(GSTVideoOverlayInterface gst_video_overlay_set_render_rectangle: self handle x: rect origin x y: rect origin y width: rect width height: rect height) = 1.