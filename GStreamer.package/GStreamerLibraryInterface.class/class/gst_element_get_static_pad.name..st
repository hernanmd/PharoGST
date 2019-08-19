procedures - element
gst_element_get_static_pad: element name: aName
^self ffiCall: #(void* gst_element_get_static_pad (void* element, const char * aName))