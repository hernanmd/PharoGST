instance creation
generateMpegTSH264ToIP: ipAddress port: aNumber
| tmp |
	tmp := self new.
	tmp ipAddress: ipAddress.
	tmp port: aNumber.
	tmp video: (Gst generateMpegTSH264ToIP: ipAddress port: aNumber).
	tmp videoBox: nil.
^tmp