instance creation
fromIP: ipAddress port: aNumber
| tmp |
	tmp := self new.
tmp ipAddress: ipAddress.
tmp port: aNumber.
tmp video: (GST getNetworkVideoIp: ipAddress port: aNumber).
tmp videoBox: (GST getVideoBoxElement: tmp video).
^tmp