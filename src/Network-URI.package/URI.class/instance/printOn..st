streaming
printOn: aStream
	"Print the normalized version of myself on aStream, by recomposing my parts using the 	algorithm in RFC 3986 section 5.3."
	| escapingStream |
	
	escapingStream := self class escapingStreamOn: aStream.
	
	self printSchemeOn: escapingStream.
	self printAuthorityOn: escapingStream.
	self printPathOn: escapingStream.
	self printQueryOn: escapingStream.
	self printFragmentOn: escapingStream.