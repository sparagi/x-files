parsing
peekForEscapedCharacterOn: aStream
	"Answer whether the next characters on aStream are a valid character escape sequence."
	"Contrary to the behavior of peekFor:, this method should not increment the position of aStream, even if successful.  peekFor:'s behavior is unhelpful when looking for escaped characters in Streams which do not have an absolute sense of position because the caller does not know how many characters to move aStream's position backward if the method succeeds."
	| howFar |

	^(aStream peekFor: beginMarker)
		ifTrue: [
			Number readFrom: ('16r', (aStream peek: 2) asUppercase).
			aStream skip: 2.
			endMarker ifNotNil: [
			(aStream peekFor: endMarker)
				ifTrue: [
					aStream 
					true]
				ifFalse: [ 
					aStream skip.
					false]]]
		ifFalse: [false].
