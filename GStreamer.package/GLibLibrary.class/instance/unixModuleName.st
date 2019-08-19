accessing platform
unixModuleName
	(#('/lib/x86_64-linux-gnu' '/usr/lib'),
			((OSEnvironment current at: 'LD_LIBRARY_PATH' ifAbsent: [ '' ]) substrings: ':'))
		do: [ :path | 
			| libraryPath |
			libraryPath := path asFileReference / 'libmm-glib.so.0.4.0'.
			libraryPath exists
				ifTrue: [ ^ libraryPath fullName ] ].
	self error: 'Cannot locate cairo library. Please check if it installed on your system'