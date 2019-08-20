services - video
getNetworkPictureIp: ipAddress port: aNumber named: aPngfilename
"GST getNetworkPictureIp: '232.0.0.1'Address port: 1234 named: 'myPicture.png"
	| launch |
	Gst isInit ifFalse:[Gst init].
	launch := 'udpsrc uri=udp://' , ipAddress,':',aNumber printString, ' !! video/mpegts ! tsdemux name=demux ! video/x-h264 ! queue ! decodebin ! videoconvert ! pngenc snapshot=true ! filesink location=',aPngfilename.
	^Gst parseLaunch: launch