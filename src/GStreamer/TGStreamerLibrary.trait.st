Trait {
	#name : 'TGStreamerLibrary',
	#category : 'GStreamer-FFI-Base',
	#package : 'GStreamer',
	#tag : 'FFI-Base'
}

{ #category : 'library path' }
TGStreamerLibrary classSide >> ffiLibraryName [
	^ GStreamer ffiLibraryName
]

{ #category : 'library path' }
TGStreamerLibrary >> ffiLibraryName [
	^ self class ffiLibraryName
]
