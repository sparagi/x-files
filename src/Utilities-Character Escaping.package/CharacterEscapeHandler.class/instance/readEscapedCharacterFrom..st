parsing
readEscapedCharacterFrom: aStream
	"If the next characters on aStream are a valid escaped representation of some character, answer them.  If not, throw an exception."

	(self peekForEscapedCharacterOn: aStream) 
		ifTrue: [self shouldBeImplemented]
		ifFalse: [self error: 'No escaped character to read.']