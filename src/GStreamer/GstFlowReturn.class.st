Class {
	#name : #GstFlowReturn,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'GST_FLOW_CUSTOM_ERROR',
		'GST_FLOW_CUSTOM_ERROR_1',
		'GST_FLOW_CUSTOM_ERROR_2',
		'GST_FLOW_CUSTOM_SUCCESS',
		'GST_FLOW_CUSTOM_SUCCESS_1',
		'GST_FLOW_CUSTOM_SUCCESS_2',
		'GST_FLOW_EOS',
		'GST_FLOW_ERROR',
		'GST_FLOW_FLUSHING',
		'GST_FLOW_NOT_LINKED',
		'GST_FLOW_NOT_NEGOTIATED',
		'GST_FLOW_NOT_SUPPORTED',
		'GST_FLOW_OK'
	],
	#category : #'GStreamer-Core'
}

{ #category : #'accessing enum' }
GstFlowReturn class >> GST_FLOW_CUSTOM_ERROR [
	"This method was automatically generated"
	^ GST_FLOW_CUSTOM_ERROR
]

{ #category : #'accessing enum' }
GstFlowReturn class >> GST_FLOW_CUSTOM_ERROR_1 [
	"This method was automatically generated"
	^ GST_FLOW_CUSTOM_ERROR_1
]

{ #category : #'accessing enum' }
GstFlowReturn class >> GST_FLOW_CUSTOM_ERROR_2 [
	"This method was automatically generated"
	^ GST_FLOW_CUSTOM_ERROR_2
]

{ #category : #'accessing enum' }
GstFlowReturn class >> GST_FLOW_CUSTOM_SUCCESS [
	"This method was automatically generated"
	^ GST_FLOW_CUSTOM_SUCCESS
]

{ #category : #'accessing enum' }
GstFlowReturn class >> GST_FLOW_CUSTOM_SUCCESS_1 [
	"This method was automatically generated"
	^ GST_FLOW_CUSTOM_SUCCESS_1
]

{ #category : #'accessing enum' }
GstFlowReturn class >> GST_FLOW_CUSTOM_SUCCESS_2 [
	"This method was automatically generated"
	^ GST_FLOW_CUSTOM_SUCCESS_2
]

{ #category : #'accessing enum' }
GstFlowReturn class >> GST_FLOW_EOS [
	"This method was automatically generated"
	^ GST_FLOW_EOS
]

{ #category : #'accessing enum' }
GstFlowReturn class >> GST_FLOW_ERROR [
	"This method was automatically generated"
	^ GST_FLOW_ERROR
]

{ #category : #'accessing enum' }
GstFlowReturn class >> GST_FLOW_FLUSHING [
	"This method was automatically generated"
	^ GST_FLOW_FLUSHING
]

{ #category : #'accessing enum' }
GstFlowReturn class >> GST_FLOW_NOT_LINKED [
	"This method was automatically generated"
	^ GST_FLOW_NOT_LINKED
]

{ #category : #'accessing enum' }
GstFlowReturn class >> GST_FLOW_NOT_NEGOTIATED [
	"This method was automatically generated"
	^ GST_FLOW_NOT_NEGOTIATED
]

{ #category : #'accessing enum' }
GstFlowReturn class >> GST_FLOW_NOT_SUPPORTED [
	"This method was automatically generated"
	^ GST_FLOW_NOT_SUPPORTED
]

{ #category : #'accessing enum' }
GstFlowReturn class >> GST_FLOW_OK [
	"This method was automatically generated"
	^ GST_FLOW_OK
]

{ #category : #'enum declaration' }
GstFlowReturn class >> enumDecl [
	"
	self rebuildEnumAccessors
	"

	^ #(
		GST_FLOW_CUSTOM_SUCCESS_2 102
		GST_FLOW_CUSTOM_SUCCESS_1 101
		GST_FLOW_CUSTOM_SUCCESS 100
		GST_FLOW_OK 0
		GST_FLOW_NOT_LINKED -1
		GST_FLOW_FLUSHING -2
		GST_FLOW_EOS -3
		GST_FLOW_NOT_NEGOTIATED -4
		GST_FLOW_ERROR -5
		GST_FLOW_NOT_SUPPORTED -6
		GST_FLOW_CUSTOM_ERROR -100
		GST_FLOW_CUSTOM_ERROR_1 -101
		GST_FLOW_CUSTOM_ERROR_2 -102
	)
]
