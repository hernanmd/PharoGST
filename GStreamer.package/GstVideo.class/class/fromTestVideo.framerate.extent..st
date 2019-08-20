instance creation
fromTestVideo: aPatternNameOrNumber framerate: aFpsValue extent: aPoint
	| video |
	video := self new.
	video pipeline: (Gst getTestVideo: aPatternNameOrNumber framerate: aFpsValue extent: aPoint).
	video videoBox: (Gst getVideoBoxElement: video pipeline).
	^ video