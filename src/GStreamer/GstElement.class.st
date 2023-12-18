Class {
	#name : 'GstElement',
	#superclass : 'GstObject',
	#category : 'GStreamer-Core',
	#package : 'GStreamer',
	#tag : 'Core'
}

{ #category : 'converting' }
GstElement >> asGstBaseSink [
	  ^ GstBaseSink fromHandle: self handle
]

{ #category : 'converting' }
GstElement >> asGstBin [
	^ GstBin fromHandle: self handle
]

{ #category : 'API' }
GstElement >> getCurrentRunningTime [
	^ self gst_element_get_current_running_time
]

{ #category : 'API' }
GstElement >> getState: aState pending: aPending timeout: aTimeout [
	^ self gst_element_get_state: aState pending: aPending timeout: aTimeout
]

{ #category : 'API' }
GstElement >> getStaticPad: aName [
	^ self gst_element_get_static_pad: aName
]

{ #category : 'private - ffi' }
GstElement >> gst_element_get_bus: element [

	^ self ffiCall: #(GstBus * gst_element_get_bus (GstElement * element))
]

{ #category : 'private - ffi' }
GstElement >> gst_element_get_current_running_time [
	^ self ffiCall: #( int gst_element_get_current_running_time ( self ))
]

{ #category : 'private - ffi' }
GstElement >> gst_element_get_start_time [
	^ self ffiCall: #( int gst_element_get_start_time ( self ))
]

{ #category : 'private - ffi' }
GstElement >> gst_element_get_static_pad: aName [
	^ self ffiCall: #( GstPad * gst_element_get_static_pad ( self, const gchar * aName ))
]

{ #category : 'private - ffi' }
GstElement >> gst_element_query_duration: duration format: format [
	^ self ffiCall: #( gboolean gst_element_query_duration ( self, GstFormat format, gint64 * duration ))
]

{ #category : 'private - ffi' }
GstElement >> gst_element_set_state: state [
	^ self ffiCall: #( GstStateChangeReturn gst_element_set_state ( self, GstState state ))
]

{ #category : 'API' }
GstElement >> queryDuration: duration format: format [
	^ self gst_element_query_duration: duration format: format
]

{ #category : 'API' }
GstElement >> setState: aGstState [
	^ self gst_element_set_state: aGstState
]
