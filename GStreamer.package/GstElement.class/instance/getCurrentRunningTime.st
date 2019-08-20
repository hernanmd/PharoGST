private - ffi
getCurrentRunningTime
	^ GStreamerLibraryInterface gst_element_get_current_running_time: self handle.