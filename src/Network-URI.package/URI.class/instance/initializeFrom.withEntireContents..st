initialization
initializeFrom: aStream withEntireContents: aBoolean
	"Parse my instance variables from aStream."
	"If I was successful, I leave aStream's position at the end of the URI. If I don't have to use aStream's entire contents, it may be that aStream is not at its end. If I must use all of aStream's contents, and I am not at the end of aStream, I wasn't successful after all, so I raise an error."

	self initializeSchemeSpecificPartFrom: aStream.

	"Scan for a fragment."
	(aStream peekFor: $#)
		ifTrue: [fragment _ aStream nextWhileIn: #uric].

	"Sanity checks."
	(aStream peekForAnyIn: #anywhere) ifTrue: [self error: 'There is an unused legal character.'].
	(aBoolean and: [aStream peek notNil]) ifTrue: [self error: 'All contents should have been used.'].
	(self isAbsolute and: [self isEmpty]) ifTrue: [self error: 'There must be something beyond a scheme.']