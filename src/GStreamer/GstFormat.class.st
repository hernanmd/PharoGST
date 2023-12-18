Class {
	#name : 'GstFormat',
	#superclass : 'FFIExternalEnumeration',
	#classVars : [
		'GST_FORMAT_BUFFERS',
		'GST_FORMAT_BYTES',
		'GST_FORMAT_DEFAULT',
		'GST_FORMAT_PERCENT',
		'GST_FORMAT_TIME',
		'GST_FORMAT_UNDEFINED'
	],
	#category : 'GStreamer-Core',
	#package : 'GStreamer',
	#tag : 'Core'
}

{ #category : 'accessing enum' }
GstFormat class >> GST_FORMAT_BUFFERS [
	"This method was automatically generated"
	^ GST_FORMAT_BUFFERS
]

{ #category : 'accessing enum' }
GstFormat class >> GST_FORMAT_BYTES [
	"This method was automatically generated"
	^ GST_FORMAT_BYTES
]

{ #category : 'accessing enum' }
GstFormat class >> GST_FORMAT_DEFAULT [
	"This method was automatically generated"
	^ GST_FORMAT_DEFAULT
]

{ #category : 'accessing enum' }
GstFormat class >> GST_FORMAT_PERCENT [
	"This method was automatically generated"
	^ GST_FORMAT_PERCENT
]

{ #category : 'accessing enum' }
GstFormat class >> GST_FORMAT_TIME [
	"This method was automatically generated"
	^ GST_FORMAT_TIME
]

{ #category : 'accessing enum' }
GstFormat class >> GST_FORMAT_UNDEFINED [
	"This method was automatically generated"
	^ GST_FORMAT_UNDEFINED
]

{ #category : 'enum declaration' }
GstFormat class >> enumDecl [
	"
	self rebuildEnumAccessors
	" 
	^ {
		(#GST_FORMAT_UNDEFINED -> 0).
		(#GST_FORMAT_DEFAULT -> 1).
		(#GST_FORMAT_BYTES -> 2).
		(#GST_FORMAT_TIME -> 3).
		(#GST_FORMAT_BUFFERS -> 4).
		(#GST_FORMAT_PERCENT -> 5).
	} asDictionary 
]
