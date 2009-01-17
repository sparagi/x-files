scheme registry
defaultPortFor: scheme
	"Answer the default port (an Integer) for scheme (conforms to String), or nil if there is 
	none."
	
	^DefaultPortByScheme at: scheme ifAbsent: [nil]