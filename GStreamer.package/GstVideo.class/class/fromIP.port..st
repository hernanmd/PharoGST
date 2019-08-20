instance creation
fromIP: ipAddress port: aNumber
	| video |
	video := self new.
	video ipAddress: ipAddress.
	video port: aNumber.
	video	pipeline: (Gst getNetworkVideoIp: ipAddress port: aNumber).
	video 	videoBox: (Gst getVideoBoxElement: video pipeline).
	^ video