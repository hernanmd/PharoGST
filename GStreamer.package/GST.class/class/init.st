procedures
init
"GST init"
| argc argv |
	argc := 0 pointer.
	argv := ExternalAddress fromString:''.
GStreamerLibraryInterface  gst_init: argc string: argv.
self isInit ifTrue:[initState := true].