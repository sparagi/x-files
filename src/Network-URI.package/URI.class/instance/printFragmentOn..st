streaming
printFragmentOn: escapingStream
	"Print the normalized version of my fragment on aStream, using the algorithm in RFC 3986 
	section 5.3."
	
	fragment ifNotNil: [
		escapingStream 
			nextPut: $#;
			nextPutAll: fragment as: #fragment]


	
