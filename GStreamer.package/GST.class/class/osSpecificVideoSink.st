procedures
osSpecificVideoSink

	Smalltalk os platformName = 'unix' ifTrue:[^'xvimagesink'].
	Smalltalk os platformName = 'Win32' ifTrue:[^'d3dvideosink'].
	^self error: 'MISSING OS'.