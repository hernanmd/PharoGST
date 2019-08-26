Class {
	#name : #GstMessageType,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'GST_MESSAGE_EOS',
		'GST_MESSAGE_ERROR',
		'GST_MESSAGE_INFO',
		'GST_MESSAGE_TAG',
		'GST_MESSAGE_UNKNOWN',
		'GST_MESSAGE_WARNING'
	],
	#category : #'GStreamer-Core'
}

{ #category : #'accessing enum' }
GstMessageType class >> GST_MESSAGE_EOS [
	"This method was automatically generated"
	^ GST_MESSAGE_EOS
]

{ #category : #'accessing enum' }
GstMessageType class >> GST_MESSAGE_ERROR [
	"This method was automatically generated"
	^ GST_MESSAGE_ERROR
]

{ #category : #'accessing enum' }
GstMessageType class >> GST_MESSAGE_INFO [
	"This method was automatically generated"
	^ GST_MESSAGE_INFO
]

{ #category : #'accessing enum' }
GstMessageType class >> GST_MESSAGE_TAG [
	"This method was automatically generated"
	^ GST_MESSAGE_TAG
]

{ #category : #'accessing enum' }
GstMessageType class >> GST_MESSAGE_UNKNOWN [
	"This method was automatically generated"
	^ GST_MESSAGE_UNKNOWN
]

{ #category : #'accessing enum' }
GstMessageType class >> GST_MESSAGE_WARNING [
	"This method was automatically generated"
	^ GST_MESSAGE_WARNING
]

{ #category : #'enum declaration' }
GstMessageType class >> enumDecl [
	"
	self rebuildEnumAccessors
	"

	^ #(
		GST_MESSAGE_UNKNOWN 0
		GST_MESSAGE_EOS 1
		GST_MESSAGE_ERROR 2
		GST_MESSAGE_WARNING 4
		GST_MESSAGE_INFO 8
		GST_MESSAGE_TAG 16
	)
]
