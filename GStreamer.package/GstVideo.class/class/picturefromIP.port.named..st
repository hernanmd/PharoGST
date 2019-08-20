instance creation
picturefromIP: ipAddress port: aNumber named: aPngFilename
| tmp |
	tmp := Gst getNetworkPictureIp: ipAddress port: aNumber named: aPngFilename.
	tmp play.
^tmp