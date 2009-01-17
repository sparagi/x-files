accessing
peekForEscapedCharacterOn: aStream
	"Answer whether the next characters on aStream are a valid character escape sequence."
	"Contrary to the behavior of peekFor:, this method should not increment the position of aStream, even if successful.  peekFor:'s behavior is unhelpful when looking for escaped characters in Streams which do not have an absolute sense of position because the caller does not know how many characters to move aStream's position backward if the method succeeds."

	^escapeHandlers 
		ifNil: [false]
		ifNotNil: [escapeHandlers anySatisfy: [:h | h peekForEscapedCharacterOn: aStream]]
