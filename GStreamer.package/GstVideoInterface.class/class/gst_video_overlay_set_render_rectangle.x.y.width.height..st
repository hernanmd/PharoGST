procedures - video
gst_video_overlay_set_render_rectangle: overlay x: x y: y width: width height: height
^self ffiCall: #(bool gst_video_overlay_set_render_rectangle (void* overlay,int x,int y,int width,int height))