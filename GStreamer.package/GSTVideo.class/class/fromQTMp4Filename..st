instance creation
fromQTMp4Filename: aFilename
| tmp |
	tmp := self new.
tmp video: (GST getQtMp4Video: aFilename).
tmp videoBox: (GST getVideoBoxElement: tmp video).
^tmp