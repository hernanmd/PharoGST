actions
getStaticPad: aName

	^GSTPad handle: (GStreamerLibraryInterface gst_element_get_static_pad: self handle name: aName).