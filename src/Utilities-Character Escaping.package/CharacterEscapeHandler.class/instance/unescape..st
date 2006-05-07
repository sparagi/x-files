unescaping
unescape: escapedCharacter
	"Take the String escapedCharacter as an escaped representation of one character.  Answer the unescaped representation of this character.  Throw an exception if escapedCharacter is not a valid escape sequence."

	| stream result |
	stream _ ReadStream on: escapedCharacter.
	result _ self unescapeNextFrom: stream.
	^stream atEnd
		ifTrue: [result]
		ifFalse: [self error: 'extra characters after escape sequence ends']