accessing
nextWhileIn: characterClassName
	"Answer the longest possible contiguous string of characters which are acceptable according to the character class corresponding to characterClassName, starting from my stream's current position."

	| nextCharacter inProgress |

	inProgress _ WritableStream onShortString.
	nextCharacter _ stream peek.

	[(URICharacters at: characterClassName) includes: nextCharacter] whileTrue: [
		(nextCharacter = $%) ifTrue: [
			stream skip.
			nextCharacter _ Character value: (Number readFrom: ('16r', (stream peek: 2) asUppercase)).
			stream skip].
		inProgress nextPut: nextCharacter.
		stream skip.
		nextCharacter _ stream peek].

	 ^inProgress contents