parsing
readEscapedCharacterFrom: aStream
	"If the next characters on aStream are a valid escaped representation of some character, answer them.  If not, throw an exception."

	self subclassResponsibility