instance creation
fromTestVideo: aPatternNameOrNumber framerate: aFpsValue extent: aPoint
| tmp |
	tmp := self new.
tmp video: (GST getTestVideo: aPatternNameOrNumber framerate: aFpsValue extent: aPoint).
tmp videoBox: (GST getVideoBoxElement: tmp video).
^tmp