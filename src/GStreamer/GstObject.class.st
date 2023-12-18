Class {
	#name : 'GstObject',
	#superclass : 'FFIExternalObject',
	#traits : 'TGStreamerLibrary',
	#classTraits : 'TGStreamerLibrary classTrait',
	#pools : [
		'GLibConstants',
		'GStreamerTypes'
	],
	#category : 'GStreamer-Core',
	#package : 'GStreamer',
	#tag : 'Core'
}

{ #category : 'accessing' }
GstObject class >> handle: aValue [
	aValue isNull
		ifFalse: [ ^ self new handle: aValue ]
		ifTrue: [ ^ nil ]
]

{ #category : 'private -ffi' }
GstObject >> gst_object_unref [
	^ self ffiCall: #( void gst_object_unref ( self ))
]

{ #category : 'API' }
GstObject >> unref [
	self gst_object_unref 
]
