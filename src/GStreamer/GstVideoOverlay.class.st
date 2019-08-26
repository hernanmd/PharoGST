Class {
	#name : #GstVideoOverlay,
	#superclass : #FFIOpaqueObject,
	#category : #'GStreamer-Video'
}

{ #category : #'private - primitives' }
GstVideoOverlay >> gst_video_overlay_handle_events: handle_events [
	^ self ffiCall: #( void gst_video_overlay_handle_events ( self, gboolean handle_events ))
]

{ #category : #'private - primitives' }
GstVideoOverlay >> gst_video_overlay_set_render_rectangleX: x y: y width: width height: height [
	^ self ffiCall: #( gboolean gst_video_overlay_set_render_rectangle ( self, 
										gint x, gint y, 
										gint width, gint height ))
]

{ #category : #'private - primitives' }
GstVideoOverlay >> gst_video_overlay_set_window_handle: aHandle [
	^ self ffiCall: #( void gst_video_overlay_set_window_handle ( self, guintptr aHandle ))
]

{ #category : #API }
GstVideoOverlay >> handleEvents: events [
	^ self gst_video_overlay_handle_events: events
]

{ #category : #API }
GstVideoOverlay >> setRenderRectangle: aRectangle [
	| r |
	r := aRectangle ceiling.
	^ self gst_video_overlay_set_render_rectangleX: r origin x 
				y: r origin y 
				width: r corner x
				height: r corner y
]

{ #category : #API }
GstVideoOverlay >> setWindowHandle: aHandle [
	^ self gst_video_overlay_set_window_handle: aHandle
]
