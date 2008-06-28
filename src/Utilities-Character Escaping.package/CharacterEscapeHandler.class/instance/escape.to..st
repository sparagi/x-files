escaping
escape: aCharacter to: aStream
	"Write the escaped representation of aCharacter to aStream."

	aStream nextPutAll: beginMarker.
	self escapeValue: aCharacter to: aStream.
	endMarker ifNotNil: [aStream nextPutAll: endMarker].	