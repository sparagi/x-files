accessing
nextWhileIn: characterClassName
	"Answer the longest possible contiguous string of characters which are acceptable according to the character class corresponding to characterClassName, starting from my stream's current position."

	| nextCharacter inProgress |

	inProgress _ (String new: 10) writeStream.
	nextCharacter _ stream peek.

	[(URICharacters at: characterClassName) includes: nextCharacter] whileTrue: [
		(nextCharacter = $%) ifTrue: [
			stream next.
			nextCharacter _ Character value: (Number readFrom: ('16r', (stream peek: 2) asUppercase)).
			stream next].
		inProgress nextPut: nextCharacter.
		stream next.
		nextCharacter _ stream peek].

	 ^inProgress contents