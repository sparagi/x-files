streaming
printSchemeOn: escapingStream
	"Print the normalized version of my scheme on aStream, using the algorithm in RFC 3986 
	section 5.3."

	scheme ifNotNil: [
		escapingStream
			nextPutAll: scheme;
			nextPut: $:].
