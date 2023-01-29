Class {
	#name : #GstAppSrc,
	#superclass : #GstBaseSrc,
	#category : #'GStreamer-App'
}

{ #category : #API }
GstAppSrc >> endOfStream [
	^ self gst_app_src_end_of_stream
]

{ #category : #'private - ffi' }
GstAppSrc >> gst_app_src_end_of_stream [
	^ self ffiCall: #( GstFlowReturn gst_app_src_end_of_stream ( self ))
]

{ #category : #'private - ffi' }
GstAppSrc >> gst_app_src_push_sample: sample [
	^ self ffiCall: #( GstFlowReturn gst_app_src_push_sample ( self, GstSample * sample ))



]

{ #category : #API }
GstAppSrc >> pushSample: aSample [
	^ self gst_app_src_push_sample: aSample
]
