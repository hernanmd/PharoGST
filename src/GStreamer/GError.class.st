Class {
	#name : 'GError',
	#superclass : 'FFIExternalStructure',
	#classVars : [
		'OFFSET_CODE',
		'OFFSET_DOMAIN',
		'OFFSET_MESSAGE'
	],
	#category : 'GStreamer-FFI-Base',
	#package : 'GStreamer',
	#tag : 'FFI-Base'
}

{ #category : 'field definition' }
GError class >> fieldsDesc [
" self rebuildFieldAccessors "
	^ #(
  		void*       domain;
  		int         code; 
  		char*			message;
		)
]

{ #category : 'accessing structure variables' }
GError >> code [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_CODE
]

{ #category : 'accessing structure variables' }
GError >> code: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_CODE put: anObject
]

{ #category : 'accessing structure variables' }
GError >> domain [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DOMAIN) type: ExternalType void asPointerType
]

{ #category : 'accessing structure variables' }
GError >> domain: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DOMAIN put: anObject getHandle.
]

{ #category : 'accessing structure variables' }
GError >> message [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_MESSAGE) type: ExternalType char asPointerType
]

{ #category : 'accessing structure variables' }
GError >> message: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MESSAGE put: anObject getHandle.
]
