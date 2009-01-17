streaming
printOn: aStream
	"Print the encoded version of myself on aStream."

	octets ifNotNil: [octets printOn: aStream withDelimiter: $.]