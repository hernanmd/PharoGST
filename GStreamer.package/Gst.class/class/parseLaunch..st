procedures
parseLaunch: aString

initState = true ifTrue:[
^GstPipeline handle: (GStreamerLibraryInterface gst_parse_launch: aString error: nil)]
ifFalse:[self error:'GST not initialized'].