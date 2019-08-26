Class {
	#name : #BaselineOfGStreamer,
	#superclass : #BaselineOf,
	#category : #BaselineOfGStreamer
}

{ #category : #baselines }
BaselineOfGStreamer >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec package: 'GStreamer' ]
]
