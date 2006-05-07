streaming
printSchemeSpecificPartOn: encodingStream
	"Print my scheme-specific part on encodingStream."

	authority ifNotNil: [encodingStream nextPutAll: '//'.  authority printOn: encodingStream].
	path ifNotNil: [path printOn: encodingStream].
	query ifNotNil: [encodingStream nextPut: $?; nextPutAll: query as: 'uric']