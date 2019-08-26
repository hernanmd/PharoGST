Class {
	#name : #GStreamer,
	#superclass : #Object,
	#classVars : [
		'ModuleName',
		'ModuleSession'
	],
	#pools : [
		'GStreamerTypes'
	],
	#category : #'GStreamer-FFI-Base'
}

{ #category : #native }
GStreamer class >> checkLibraryName: aName [
	^ (ExternalAddress loadSymbol: 'gst_init' from: aName) notNil
]

{ #category : #native }
GStreamer class >> ffiLibraryName [
	^ self moduleName
]

{ #category : #native }
GStreamer class >> findGStreamer [
	"In Linux, try to use the linked version."
	OSSDL2Driver hasPlugin.
	
	"Look for SDL2 using different names."
	#(0							"Static"
	GStreamer
	'libgstreamer-1.0.dylib'		"Mac"
	'libgstreamer-1.0.so.0'		"Linux"
	'libgstreamer-1.0.dll'		"Windows"
	) do: [ :eachName | 
		[ (self checkLibraryName: eachName) ifTrue: [ ^ eachName ] ] 
		ifError: [nil] ].
	self error: 'Failed to find GStreamer library.'
]

{ #category : #'private - primitives' }
GStreamer class >> gst_init: argc string: argv [
	^ self ffiCall: #( void gst_init (int *argc, char **argv))

]

{ #category : #'private - primitives' }
GStreamer class >> gst_is_initialized [
	^ self ffiCall: #( gboolean gst_is_initialized ( void ))

]

{ #category : #initialization }
GStreamer class >> init [
	self 
		gst_init: 0 pointer 
		string: (ExternalAddress fromString: '').
]

{ #category : #testing }
GStreamer class >> isAvailable [
	^ [ (ExternalAddress 
		loadSymbol: 'gst_init'
		from: GStreamer moduleName) notNil ] ifError: [ false ]
]

{ #category : #testing }
GStreamer class >> isInit [
	^ self gst_is_initialized
]

{ #category : #native }
GStreamer class >> moduleName [
	ModuleSession ~~ Smalltalk session ifTrue: [
		ModuleName := self findGStreamer.
		ModuleSession := Smalltalk session
	].
	^ ModuleName
]

{ #category : #private }
GStreamer class >> osSpecificVideoSink [
	Smalltalk os platformName = 'unix' ifTrue:[ ^ 'xvimagesink' ].
	Smalltalk os platformName = 'Win32' ifTrue:[ ^ 'd3dvideosink' ].
	^ self error: 'OS not supported'.
]

{ #category : #'library path' }
GStreamer >> ffiLibraryName [
	^self class ffiLibraryName
]
