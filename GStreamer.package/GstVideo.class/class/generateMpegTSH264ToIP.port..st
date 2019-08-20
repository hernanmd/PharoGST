instance creation
generateMpegTSH264ToIP: ipAddress port: aNumber
	| video |
	video := self new.
	video ipAddress: ipAddress.
	video port: aNumber.
	video pipeline: (Gst generateMpegTSH264ToIP: ipAddress port: aNumber).
	video videoBox: nil.
	^ video