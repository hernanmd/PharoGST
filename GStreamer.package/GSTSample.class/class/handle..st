accessing
handle: aValue
	aValue = 0
		ifTrue: [ ^ self new handle: aValue ]
		ifFalse: [ ^ nil ]