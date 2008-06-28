accessing contents
peekForAnyIn: characterClassName
	"Answer whether the next character on my stream is acceptable according to the character class named characterClassName.  In this context, a valid, complete escape sequence counts as an acceptable character."

	| nextCharacter characterClass |

	nextCharacter := stream peek.
	characterClass := characterClasses at: characterClassName.
	^(characterClass includes: nextCharacter) ifTrue: [true] ifFalse: [self shouldBeImplemented].
"
	^((URICharacters at: characterClassName) includes: nextCharacter) yourselfUnlessTrue: [
		(nextCharacter = $%)
			ifTrue: [
				[
					nextString _ stream peek: 3.
					Number readFrom: ('16r', (nextString copyFrom: 2) asUppercase).
					true
				]
					on: Error
					do: [false]]
			ifFalse: [true]]"