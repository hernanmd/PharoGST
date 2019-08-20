instance creation
fromQTMp4Filename: aFilename
| tmp |
	tmp := self new.
tmp video: (Gst getQtMp4Video: aFilename).
tmp videoBox: (Gst getVideoBoxElement: tmp video).
^tmp