procedures - app
gst_app_src_push_sample: appsrc sample: sample
^self ffiCall: #(int gst_app_src_push_sample (void *appsrc, void *sample))


