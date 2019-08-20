actions
getStaticPad: aName

	^GstPad handle: (GStreamerLibraryInterface gst_element_get_static_pad: self handle name: aName).