procedures - element
gst_element_get_current_running_time: element
	^ self ffiCall: #(int gst_element_get_current_running_time (void* element))