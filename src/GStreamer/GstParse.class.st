"
## Example

### Loading local video file

```smalltalk
| pipeline baseSink overlay |

pipeline := GstParse
    launch: 'filesrc location=my_file.mp4'
    error: nil.
pipeline setState: GstState GST_STATE_PLAYING.
baseSink := pipeline asGstBaseSink.
overlay := baseSink asGstVideoOverlay setRenderRectangle: (10 @ 10 extent: 100 @ 100).
```
"
Class {
	#name : 'GstParse',
	#superclass : 'FFIExternalObject',
	#traits : 'TGStreamerLibrary',
	#classTraits : 'TGStreamerLibrary classTrait',
	#pools : [
		'GStreamerTypes'
	],
	#category : 'GStreamer-Core',
	#package : 'GStreamer',
	#tag : 'Core'
}

{ #category : 'private - ffi' }
GstParse class >> gst_parse_launch: pipeline_description error: error [
	^ self ffiCall: #( GstElement * gst_parse_launch ( const gchar * pipeline_description, 
								GError ** error ))
]

{ #category : 'API' }
GstParse class >> launch: aString error: anError [
	^ self gst_parse_launch: aString error: anError
]
