instance creation
picturefromIP: ipAddress port: aNumber named: aPngFilename
	| video |
	video := Gst getNetworkPictureIp: ipAddress port: aNumber named: aPngFilename.
	video play.
	^ video