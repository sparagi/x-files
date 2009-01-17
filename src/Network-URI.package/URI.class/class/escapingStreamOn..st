private
escapingStreamOn: aStream
	"Answer a Stream that will understand the character classes I want to use."
	
	^URIStream on: aStream