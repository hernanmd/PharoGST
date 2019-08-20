procedures - element
gst_element_query_duration: element format: aFormat duration: duration
	^ self ffiCall: #(bool gst_element_query_duration (void* element, void aFormat, void* duration))