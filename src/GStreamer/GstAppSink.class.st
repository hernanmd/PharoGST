Class {
	#name : 'GstAppSink',
	#superclass : 'GstBaseSink',
	#category : 'GStreamer-App',
	#package : 'GStreamer',
	#tag : 'App'
}

{ #category : 'API' }
GstAppSink >> gst_app_sink_get_emit_signals [
	^ self ffiCall: #( int gst_app_sink_get_emit_signals ( self ))

]

{ #category : 'API' }
GstAppSink >> gst_app_sink_set_emit_signals: emit [
	^ self ffiCall: #( void gst_app_sink_set_emit_signals ( self, int emit ))
]
