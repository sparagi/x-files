parsing
unescapeNextFrom: aStream 
	"Take the next characters on aStream as an escaped
	representation. Answer the unescaped representation of this
	character, leaving the position of aStream after the escaped
	representation. Throw an exception if the next characters on
	aStream are not a valid escape sequence."
	
	| hex |
	beginMarker ifNotEmpty: [
		(aStream nextMatchAll: beginMarker) ifFalse: [self error: 'Beginning of character escape sequence does not match']].
	hex := (aStream peek: 2) asUppercase.
	('0123456789ABCDEF' includesAllOf: hex)
		ifTrue: [aStream next: 2]
		ifFalse: [self error: 'Malformed hex representation'].
	endMarker ifNotNil: [
		(aStream nextMatchAll: beginMarker) ifFalse: [self error: 'End of character escape sequence does not match']].
	^Number readFrom: hex base: 16.