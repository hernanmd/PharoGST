instance creation
picturefromIP: ipAddress port: aNumber named: aPngFilename
| tmp |
	tmp := GST getNetworkPictureIp: ipAddress port: aNumber named: aPngFilename.
	tmp play.
^tmp