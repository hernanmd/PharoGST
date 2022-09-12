Class {
	#name : #GstBus,
	#superclass : #GstObject,
	#category : #'GStreamer-Core'
}

{ #category : #api }
GstBus >> gst_bus_peek [
	^ self ffiCall: #( GstMessage * gst_bus_peek (GstBus * bus))
]

{ #category : #api }
GstBus >> gst_bus_poll: bus events: events clock: timeout [
	^ self ffiCall: #( GstMessage * gst_bus_poll (GstBus * bus, GstMessageType events, GstClockTime timeout))
]

{ #category : #api }
GstBus >> gst_bus_pop [
	^ self ffiCall: #(GstMessage * gst_bus_pop (self))
]

{ #category : #api }
GstBus >> gst_bus_timed_pop_filtered: timeout types: types [

	^ self ffiCall: #(GstMessage * gst_bus_timed_pop_filtered (self, GstClockTime timeout, GstMessageType types))
]
