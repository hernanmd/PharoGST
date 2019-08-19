actions
setState: aState

	self handle isNil ifTrue: [^self].
	aState = #PLAYING
		ifTrue: 
			[GStreamerLibraryInterface gst_element_set_state: self handle
				state: GStreamerLibraryInterface GST_STATE_PLAYING].
	aState = #NULL
		ifTrue: 
			[GStreamerLibraryInterface gst_element_set_state: self handle
				state: GStreamerLibraryInterface GST_STATE_NULL].
	aState = #PAUSE
		ifTrue: 
			[GStreamerLibraryInterface gst_element_set_state: self handle
				state: GStreamerLibraryInterface GST_STATE_PAUSED]