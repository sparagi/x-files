initialization
initializeSchemeSpecificPartFrom: aURIStream
	"Parse my instance variables from aURIStream, leaving aURIStream's position at the end of my scheme-specific part."

	path _ aURIStream nextWhileIn: #uricNoSlash.
	path isEmpty ifTrue: [path _ nil]
