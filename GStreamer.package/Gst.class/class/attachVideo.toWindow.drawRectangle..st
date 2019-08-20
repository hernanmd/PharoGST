services
attachVideo: aVideoElement toWindow: aWindowId drawRectangle: aRectangleOrNil
| sinkElement |
	sinkElement := self getVideoBoxElement: aVideoElement.
sinkElement isNil ifTrue:[^self error:'Error, "outputsink" not found in pipeline'].
sinkElement overlaySetWindowHandle: aWindowId.
aRectangleOrNil isNil ifFalse:[sinkElement overlaySetRenderRectangle: (aRectangleOrNil)].
^sinkElement