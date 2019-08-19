procedures
parseLaunch: aString

initState = true ifTrue:[
^GSTPipeline handle: (GStreamerLibraryInterface gst_parse_launch: aString error: nil)]
ifFalse:[self error:'GST not initialized'].