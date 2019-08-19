procedures
getByName: aString

	^GSTElement handle: (GStreamerLibraryInterface  gst_bin_get_by_name: self handle name: aString)