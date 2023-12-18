Class {
	#name : 'GStreamer',
	#superclass : 'Object',
	#classVars : [
		'ModuleName',
		'ModuleSession'
	],
	#pools : [
		'GStreamerTypes'
	],
	#category : 'GStreamer-FFI-Base',
	#package : 'GStreamer',
	#tag : 'FFI-Base'
}

{ #category : 'native' }
GStreamer class >> checkLibraryName: aName [
	^ (ExternalAddress loadSymbol: 'gst_init' from: aName) notNil
]

{ #category : 'native' }
GStreamer class >> ffiLibraryName [

	^ Smalltalk os isMacOSX
		ifTrue: [ self macLibraryFileName ]
		ifFalse: [ Smalltalk os isLinux
			ifTrue: [ self unixLibraryFileName ]
			ifFalse: [ Smalltalk os isWindows 
					ifTrue: [ self win32LibraryFileName
					ifFalse: [ self error: 'Library not found' ] ] ] ]
]

{ #category : 'private - primitives' }
GStreamer class >> gst_init: argc string: argv [
	^ self ffiCall: #( void gst_init (int *argc, char **argv))

]

{ #category : 'private - primitives' }
GStreamer class >> gst_is_initialized [
	^ self ffiCall: #( gboolean gst_is_initialized ( void ))

]

{ #category : 'initialization' }
GStreamer class >> init [
	self 
		gst_init: 0 pointer 
		string: (ExternalAddress fromString: '').
]

{ #category : 'testing' }
GStreamer class >> isAvailable [

	[ (ExternalAddress 
		loadSymbol: 'gst_init'
		from: self ffiLibraryName) notNil ] 
	on: Error
	do: [ : ex | ^ false ].
	^ true
]

{ #category : 'testing' }
GStreamer class >> isInit [
	^ self gst_is_initialized
]

{ #category : 'native' }
GStreamer class >> macLibraryFileName [

	^ 'libgstreamer-1.0.dylib'
]

{ #category : 'native' }
GStreamer class >> macLibraryName [
	"Private - See superclass comment"

	^ FFIMacLibraryFinder new 
		userPaths: { FileLocator workingDirectory };
		findAnyLibrary: { self macLibraryFileName }
]

{ #category : 'private' }
GStreamer class >> osSpecificVideoSink [
	Smalltalk os platformName = 'unix' ifTrue:[ ^ 'xvimagesink' ].
	Smalltalk os platformName = 'Win32' ifTrue:[ ^ 'd3dvideosink' ].
	^ self error: 'OS not supported'.
]

{ #category : 'native' }
GStreamer class >> unixLibraryFileName [

	^ 'libgstreamer-1.0.so.0'
]

{ #category : 'native' }
GStreamer class >> unixLibraryName [
	"Private - See superclass comment"

	^ FFIUnixLibraryFinder new 
		userPaths: { FileLocator workingDirectory };
		findAnyLibrary: { self unixLibraryFileName }
]

{ #category : 'native' }
GStreamer class >> win32LibraryFileName [

	^ 'libgstreamer-1.0.dll'
]

{ #category : 'native' }
GStreamer class >> win32LibraryName [
	"Private - See superclass comment"

	^ FFIWindowsLibraryFinder new 
		userPaths: { FileLocator workingDirectory };
		findAnyLibrary: { self win32LibraryFileName }
]

{ #category : 'library path' }
GStreamer >> ffiLibraryName [
	^self class ffiLibraryName
]
