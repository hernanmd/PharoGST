Class {
	#name : 'GstStateChangeReturn',
	#superclass : 'FFIExternalEnumeration',
	#classVars : [
		'GST_STATE_CHANGE_ASYNC',
		'GST_STATE_CHANGE_FAILURE',
		'GST_STATE_CHANGE_NO_PREROLL',
		'GST_STATE_CHANGE_SUCCESS'
	],
	#category : 'GStreamer-Core',
	#package : 'GStreamer',
	#tag : 'Core'
}

{ #category : 'accessing enum' }
GstStateChangeReturn class >> GST_STATE_CHANGE_ASYNC [
	"This method was automatically generated"
	^ GST_STATE_CHANGE_ASYNC
]

{ #category : 'accessing enum' }
GstStateChangeReturn class >> GST_STATE_CHANGE_FAILURE [
	"This method was automatically generated"
	^ GST_STATE_CHANGE_FAILURE
]

{ #category : 'accessing enum' }
GstStateChangeReturn class >> GST_STATE_CHANGE_NO_PREROLL [
	"This method was automatically generated"
	^ GST_STATE_CHANGE_NO_PREROLL
]

{ #category : 'accessing enum' }
GstStateChangeReturn class >> GST_STATE_CHANGE_SUCCESS [
	"This method was automatically generated"
	^ GST_STATE_CHANGE_SUCCESS
]

{ #category : 'enum declaration' }
GstStateChangeReturn class >> enumDecl [
	"
	self rebuildEnumAccessors
	"

	^ #(
		GST_STATE_CHANGE_FAILURE 0
		GST_STATE_CHANGE_SUCCESS 1
		GST_STATE_CHANGE_ASYNC 2
		GST_STATE_CHANGE_NO_PREROLL 3
	)
]
