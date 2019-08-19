services - video
generateMpegTSH264ToIP: ipAddress port: aNumber
"generer le flux avec : 
GST generateMpegTSH264ToIP: '127.0.0.1' port: 5014"
	| launch |
	GST isInit ifFalse:[GST init].
	launch := 'videotestsrc ! video/x-raw, framerate=25/1, width=1920, height=1080, format=I420 ! timeoverlay font-desc="sans bold 40" halignment=0 valignment=2 ! x264enc bitrate=2000 key-int-max=10 ! h264parse config-interval=1 ! mpegtsmux ! udpsink port=',aNumber printString, ' host=',ipAddress,' sync=true enable-last-sample=false send-duplicates=false blocksize=1316 name=outputsink'.
	^GST parseLaunch: launch