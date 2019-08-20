instance creation
fromQTMp4Filename: aFilename
	| video |
	video := self new.
	video pipeline: (Gst getQtMp4Video: aFilename).
	video videoBox: (Gst getVideoBoxElement: video pipeline).
	^ video