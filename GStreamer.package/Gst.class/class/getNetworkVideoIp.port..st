services - video
getNetworkVideoIp: ipAddress port: aNumber
"generer le flux avec : 
gst-launch-1.0 -e videotestsrc !! video/x-raw, framerate=25/1, width=640, height=480, format=I420 !! timeoverlay font-desc=""sans bold 40"" halignment=0 valignment=2 !! x264enc bitrate=2000 key-int-max=10 !! h264parse config-interval=1 !! mpegtsmux !! udpsink port=5014 host=127.0.0.1 sync=true enable-last-sample=false send-duplicates=false blocksize=1316"
"GST getNetworkVideoIp: '127.0.0.1' port: 5014"
	| launch |
	Gst isInit ifFalse:[Gst init].
	launch := 'udpsrc uri=udp://' , ipAddress,':',aNumber printString, ' ! video/mpegts ! tsdemux name=demux ! video/x-h264 ! queue ! decodebin ! videoconvert ! videoscale ! '
					, self osSpecificVideoSink , ' name=outputsink'.
	^Gst parseLaunch: launch