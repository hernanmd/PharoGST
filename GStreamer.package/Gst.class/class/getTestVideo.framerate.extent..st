services - video
getTestVideo: aPatternNameOrNumber framerate: aFpsValue extent: aPoint
	"For a Test video"
	"GST getTestVideo: nil framerate:30 extent:(1920@1080)"

	| launch patternId |
	Gst isInit ifFalse:[Gst init].
	aPatternNameOrNumber isNil
		ifTrue: 
			[launch := 'videotestsrc ! video/x-raw, framerate=' , aFpsValue printString
						, '/1, width=' , aPoint x asInteger printString
						, ', height=' , aPoint y asInteger printString
						, ' ! videoconvert ! ' , self osSpecificVideoSink
						, ' name=outputsink']
		ifFalse: 
			[patternId := aPatternNameOrNumber isString
						ifTrue: [aPatternNameOrNumber]
						ifFalse: [aPatternNameOrNumber printString].
			launch := 'videotestsrc pattern=' , patternId
						, ' ! video/x-raw, framerate=' , aFpsValue printString
						, '/1, width=' , aPoint x asInteger printString
						, ', height=' , aPoint y asInteger printString
						, ' ! videoconvert ! ' , self osSpecificVideoSink
						, ' name=outputsink'].
	^Gst parseLaunch: launch