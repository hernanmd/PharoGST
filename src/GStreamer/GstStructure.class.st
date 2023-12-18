Class {
	#name : 'GstStructure',
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

{ #category : 'primitives' }
GstStructure >> gst_structure_get_int: aValue fieldname: fieldname [
	^ self ffiCall: #( gboolean gst_structure_get_int
			( self 
        	  const gchar * fieldname,
           gint * aValue ))
]
