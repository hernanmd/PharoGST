Class {
	#name : #GLibConstants,
	#superclass : #SharedPool,
	#classVars : [
		'G_USEC_PER_SEC'
	],
	#category : #'GStreamer-FFI-Base'
}

{ #category : #'class initialization' }
GLibConstants class >> initialize [
	"
	self initialize
	"
	G_USEC_PER_SEC := 1000000
]
