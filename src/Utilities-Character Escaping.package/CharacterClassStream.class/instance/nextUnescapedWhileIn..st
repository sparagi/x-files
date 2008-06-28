accessing contents
nextUnescapedWhileIn: characterClassName
	"Answer the longest possible contiguous string of characters which are acceptable according to the character class corresponding to characterClassName, starting from my stream's current position (literally).  Increment my position."

	| result |

	self shouldBeImplemented.
"	result _ WritableStream onShortString.

	[(characterClasses at: characterClassName) includes: stream peek] whileTrue: [
		result nextPut: stream next].
	inProgress _ WritableStream onShortString.
	nextCharacter _ stream peek.

	[(URICharacters at: characterClassName) includes: nextCharacter] whileTrue: [
		(nextCharacter = $%) ifTrue: [
			stream skip.
			nextCharacter _ Character value: (Number readFrom: ('16r', (stream peek: 2) asUppercase)).
			stream skip].
		inProgress nextPut: nextCharacter.
		stream skip.
		nextCharacter _ stream peek]."
	 ^result contents