streaming
printAuthorityOn: escapingStream
	"Print the normalized version of my authority on aStream, using the algorithm in RFC 3986 
	section 5.3 and instructions to normalizers in section 3.2."
	
	self hasAuthority ifTrue: [
		escapingStream nextPutAll: '//'.  
		userinfo ifNotNil: [
			escapingStream 
				nextPutAll: userinfo as: #userinfo;
				nextPut: $@].
		host ifNotNil: [host printOn: escapingStream].
		(port notNil and: [port ~= self defaultPort]) ifTrue: [
			escapingStream nextPut: $:.
			port printOn: escapingStream]]

	
