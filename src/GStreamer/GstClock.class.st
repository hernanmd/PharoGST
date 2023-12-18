Class {
	#name : 'GstClock',
	#superclass : 'GstObject',
	#category : 'GStreamer-Core',
	#package : 'GStreamer',
	#tag : 'Core'
}

{ #category : 'constants' }
GstClock class >> GST_SECOND [
	^ FFIConst value: G_USEC_PER_SEC * 1000 type: GstClockTimeDiff
	
]

{ #category : 'macros' }
GstClock class >> GST_TIME_AS_SECONDS: time [ 
	^ (time / self GST_SECOND value) asInteger
]
