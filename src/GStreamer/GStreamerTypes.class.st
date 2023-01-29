Class {
	#name : #GStreamerTypes,
	#superclass : #SharedPool,
	#classVars : [
		'GstClockTimeDiff'
	],
	#pools : [
		'GLibTypes'
	],
	#category : #'GStreamer-FFI-Base'
}

{ #category : #'class initialization' }
GStreamerTypes class >> initialize [
	"
	self initialize
	"
	GstClockTimeDiff := gint64
]
