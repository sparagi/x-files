initialization
initializeSchemeSpecificPartFrom: aURIStream
	"Parse my instance variables from aURIStream, leaving aURIStream's position at the end of my scheme-specific part."

	self subclassResponsibility