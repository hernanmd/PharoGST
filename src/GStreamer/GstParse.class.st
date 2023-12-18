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
