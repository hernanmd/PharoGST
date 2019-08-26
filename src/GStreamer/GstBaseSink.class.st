Class {
	#name : #GstBaseSink,
	#superclass : #GstElement,
	#category : #'GStreamer-Base and Utility'
}

{ #category : #API }
GstBaseSink >> getLastSample [
	^ self gst_base_sink_get_last_sample 
]

{ #category : #'private - ffi' }
GstBaseSink >> gst_base_sink_get_last_sample [
	^ self ffiCall: #( GstSample * gst_base_sink_get_last_sample ( self ))
]
