procedures - element
gst_element_get_start_time: element
	^ self ffiCall: #(int gst_element_get_start_time (void* element))