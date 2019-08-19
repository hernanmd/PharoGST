services - video
putPngFile: aFilename fromSample: aSample
"For a QT content MP4 video"
"GST getMp4VideoPipeline:'earth.mp4'"
	| file launch pipeline src |
	GST isInit ifFalse:[GST init].
	file := aFilename isString
				ifTrue: [aFilename]
				ifFalse: [aFilename printString].
	launch := 'appsrc name=source num-buffers=1 !! jpegenc !! filesink name=sink location=', file.
	pipeline := GST parseLaunch: launch. 
	src := pipeline getByName: 'source'.
	GStreamerLibraryInterface gst_app_src_push_sample: src handle sample: aSample handle.
	GStreamerLibraryInterface gst_app_src_end_of_stream: src handle.
	GStreamerLibraryInterface gst_object_unref: pipeline handle.
	pipeline play.