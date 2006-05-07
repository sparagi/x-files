streaming
printSchemeSpecificPartOn: encodingStream
	"Print my scheme-specific part."

	path ifNotNil: [encodingStream nextPutAll: path as: 'uricNoSlash']