accessing
nextPutAll: aString as: characterClassName 
	"Write aString to my stream, encoding any characters not
	allowed by the character class named by
	characterClassName. "
	| nextCharacter source |
	source := aString readStream.
	[source atEnd]
		whileFalse: [nextCharacter := source next.
			(((URICharacters at: characterClassName)
						includes: nextCharacter)
					and: [(nextCharacter = $%) not])
				ifTrue: [stream nextPut: nextCharacter]
				ifFalse: [stream nextPut: $%;
						 nextPutAll: nextCharacter hex]]