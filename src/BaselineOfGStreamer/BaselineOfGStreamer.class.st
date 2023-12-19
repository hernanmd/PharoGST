Class {
	#name : 'BaselineOfGStreamer',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfGStreamer',
	#package : 'BaselineOfGStreamer'
}

{ #category : 'baselines' }
BaselineOfGStreamer >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec postLoadDoIt: #postLoadDoIt.
			spec package: 'GStreamer' ]
]

{ #category : 'baselines' }
BaselineOfGStreamer >> postLoadDoIt [

	{ GstFlowReturn . GstState . GstStateChangeReturn . GstFormat . GstMessageType } do: [ : c | 
		c 
			rebuildEnumAccessors; 
			initializeEnumeration;
			initialize ].

]
