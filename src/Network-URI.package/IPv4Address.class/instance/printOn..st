streaming
printOn: aStream
	"Print the encoded version of myself on aStream."

	address ifNotNil: [address printOn: aStream withDelimiter: $.]