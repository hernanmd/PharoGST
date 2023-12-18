Class {
	#name : 'GstBin',
	#superclass : 'GstElement',
	#category : 'GStreamer-Core',
	#package : 'GStreamer',
	#tag : 'Core'
}

{ #category : 'API' }
GstBin >> getByName: aString [
	^ self gst_bin_get_by_name: aString
]

{ #category : 'private - primitives' }
GstBin >> gst_bin_get_by_name: name [
	^ self ffiCall: #( GstElement * gst_bin_get_by_name ( self , const gchar * name ))
]
