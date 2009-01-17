streaming
printQueryOn: escapingStream
	"Print the normalized version of my query on aStream, using the algorithm in RFC 3986 
	section 5.3."
	
	query ifNotNil: [
		escapingStream 
			nextPut: $?;
			nextPutAll: query as: #query]


	
