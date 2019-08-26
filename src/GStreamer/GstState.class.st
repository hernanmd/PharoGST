Class {
	#name : #GstState,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'GET_STATE_NULL',
		'GET_STATE_PAUSED',
		'GET_STATE_PLAYING',
		'GET_STATE_READY',
		'GET_STATE_VOID_PENDING',
		'GST_STATE_NULL',
		'GST_STATE_PAUSED',
		'GST_STATE_PLAYING',
		'GST_STATE_READY',
		'GST_STATE_VOID_PENDING'
	],
	#category : #'GStreamer-Core'
}

{ #category : #'accessing enum' }
GstState class >> GST_STATE_NULL [
	"This method was automatically generated"
	^ GST_STATE_NULL
]

{ #category : #'accessing enum' }
GstState class >> GST_STATE_PAUSED [
	"This method was automatically generated"
	^ GST_STATE_PAUSED
]

{ #category : #'accessing enum' }
GstState class >> GST_STATE_PLAYING [
	"This method was automatically generated"
	^ GST_STATE_PLAYING
]

{ #category : #'accessing enum' }
GstState class >> GST_STATE_READY [
	"This method was automatically generated"
	^ GST_STATE_READY
]

{ #category : #'accessing enum' }
GstState class >> GST_STATE_VOID_PENDING [
	"This method was automatically generated"
	^ GST_STATE_VOID_PENDING
]

{ #category : #'class initialization' }
GstState class >> enumDecl [
	"
	self rebuildEnumAccessors
	"

	^ #(
		GST_STATE_VOID_PENDING 0
		GST_STATE_NULL 1
		GST_STATE_READY 2
		GST_STATE_PAUSED 3
		GST_STATE_PLAYING 4
	)
]

{ #category : #'class initialization' }
GstState class >> initialize [
	self initializeEnumeration
]
