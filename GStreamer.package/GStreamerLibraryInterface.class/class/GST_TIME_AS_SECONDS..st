procedures - clock
GST_TIME_AS_SECONDS: time
	^ self ffiCall: #(int GST_TIME_AS_SECONDS (time))