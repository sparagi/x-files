streaming
printOn: aStream
	"Print the encoded version of myself on aStream."

	nameSegments ifNotNil: [nameSegments printOn: aStream withDelimiter: $.]