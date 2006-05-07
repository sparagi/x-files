accessing
peekForAnyIn: characterClassName
	"Answer whether the next character on my stream is acceptable according to the character class named characterClassName."

	| nextCharacter nextString |

	nextCharacter _ stream peek.

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
			ifFalse: [true]]