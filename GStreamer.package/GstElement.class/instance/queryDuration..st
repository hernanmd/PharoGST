private - ffi
queryDuration: format
	^ GStreamerLibraryInterface
		gst_element_query_duration: self handle
		format: format
		duration: duration handle