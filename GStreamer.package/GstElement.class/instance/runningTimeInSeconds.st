accessing
runningTimeInSeconds
	^ GstClock timeAsSeconds: self getCurrentRunningTime.
	