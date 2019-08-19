procedures
parseLaunch: aString withError: aBool
	| err |
	initState = true
		ifTrue: [ aBool
				ifFalse: [ err := nil ]
				ifTrue: [ err := GError new ].
			^ GSTPipeline
				handle: (GStreamerLibraryInterface gst_parse_launch: aString error: err) ]
		ifFalse: [ self error: 'GST not initialized' ]