services - video
getQtMp4Video: aFilename
"For a QT content MP4 video"
"GST getMp4VideoPipeline:'earth.mp4'"
	| file launch |
	Gst isInit ifFalse:[Gst init].
	file := aFilename isString
				ifTrue: [aFilename]
				ifFalse: [aFilename printString].
	launch := 'filesrc location=' , file
				, ' ! qtdemux name=demux demux. ! queue ! decodebin ! videoconvert ! '
					, self osSpecificVideoSink , ' name=outputsink'.
	^Gst parseLaunch: launch