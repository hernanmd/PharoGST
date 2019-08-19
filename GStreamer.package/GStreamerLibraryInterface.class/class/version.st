versions
version
"GStreamerLibraryInterface version"

| major size minor micro nano ws |
major := 0 pointer.
size := major size.
minor := 0 pointer.
micro := 0 pointer.
nano := 0 pointer.
self gst_version: major minor: minor micro: micro nano: nano.
ws := String new writeStream.
ws nextPutAll: (major integerAt: 1 size: size signed: true) printString.
ws nextPut:$..
ws nextPutAll: (minor integerAt: 1 size: size signed: true) printString.
ws nextPut:$..
ws nextPutAll: (micro integerAt: 1 size: size signed: true) printString.
ws nextPut:$..
ws nextPutAll: (nano integerAt: 1 size: size signed: true) printString.
^ws contents