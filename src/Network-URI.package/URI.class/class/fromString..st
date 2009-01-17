instantiation
fromString: uri 
	"Answer a new instance of myself, parsed from the entire contents of uri (conforms to
	String)."
	
	^ self from: uri readStream untilEnd: true