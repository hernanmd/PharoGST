accessing platform
unixModuleName
	(#('/lib/x86_64-linux-gnu' '/usr/lib'),
			((OSEnvironment current at: 'LD_LIBRARY_PATH' ifAbsent: [ '' ]) substrings: ':'))
		do: [ :path | 
			| libraryPath |
			libraryPath := path asFileReference / 'libgstreamer-1.0.so.0'.
			libraryPath exists
				ifTrue: [ ^ libraryPath fullName ] ].
	self error: 'Cannot locate cairo library. Please check if it installed on your system'