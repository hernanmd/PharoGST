Class {
	#name : 'GLibTypes',
	#superclass : 'SharedPool',
	#classVars : [
		'gboolean',
		'gchar',
		'gint',
		'gint64',
		'guint64',
		'guintptr'
	],
	#category : 'GStreamer-FFI-Base',
	#package : 'GStreamer',
	#tag : 'FFI-Base'
}

{ #category : 'class initialization' }
GLibTypes class >> initialize [
	"
	self initialize
	"
	gboolean := #bool.
	gchar := #char.
	gint := #int.
	gint64 := #int64.
	guint64 := #uint64.
	guintptr := #uint32.
]
