unescaping
unescapeNextFrom: aStream
	"Take the next characters on aStream as an escaped representation.  Answer the unescaped representation of this character, leaving the position of aStream after the escaped representation.  Throw an exception if the next characters on aStream are not a valid escape sequence."

	self subclassResponsibility