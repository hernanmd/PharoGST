"
A GStreamerTest is a test class for testing the behavior of GStreamer
"
Class {
	#name : #GStreamerTest,
	#superclass : #TestCase,
	#category : #'GStreamer-Tests-FFI-Base'
}

{ #category : #tests }
GStreamerTest >> testIsAvailable [
	"This test need to have GStream library on the system"

	self assert: GStreamer isAvailable.
]
