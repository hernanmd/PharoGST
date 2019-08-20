instance creation
fromTestVideo: aPatternNameOrNumber framerate: aFpsValue extent: aPoint
| tmp |
	tmp := self new.
tmp video: (Gst getTestVideo: aPatternNameOrNumber framerate: aFpsValue extent: aPoint).
tmp videoBox: (Gst getVideoBoxElement: tmp video).
^tmp