Trait {
	#name : #TGstVideoOverlayLibrary,
	#category : #'GStreamer-Video'
}

{ #category : #'library path' }
TGstVideoOverlayLibrary classSide >> ffiLibraryName [
	self flag: 'TODO: binding for Windows and Mac library'.
	^ 'libgstvideo-1.0.so.0'
]

{ #category : #'library path' }
TGstVideoOverlayLibrary >> ffiLibraryName [
	^ self class ffiLibraryName
]
