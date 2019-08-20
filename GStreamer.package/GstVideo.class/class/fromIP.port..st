instance creation
fromIP: ipAddress port: aNumber
| tmp |
	tmp := self new.
tmp ipAddress: ipAddress.
tmp port: aNumber.
tmp video: (Gst getNetworkVideoIp: ipAddress port: aNumber).
tmp videoBox: (Gst getVideoBoxElement: tmp video).
^tmp