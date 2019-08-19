accessing
handle: aValue
	aValue isNull
		ifFalse: [ ^ self new handle: aValue ]
		ifTrue: [ ^ nil ]