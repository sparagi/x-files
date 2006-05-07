escaping
escape: aCharacter to: aStream
	"Write the escaped representation of aCharacter to aStream."

	| hex |
	aStream nextPutAll: beginMarker.
	hex _ aCharacter hex.
	caseMessage ifNotNil: [hex _ hex perform: caseMessage].
	aStream nextPutAll: hex.
	endMarker ifNotNil: [aStream nextPutAll: endMarker].	
