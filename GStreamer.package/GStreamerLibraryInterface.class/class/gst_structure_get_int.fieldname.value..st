procedures - structures
gst_structure_get_int: structure fieldname: fieldname value: avalue
^self ffiCall: #(int gst_structure_get_int(void *structure,
                       const char *fieldname,
                       int *avalue))


