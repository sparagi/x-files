accessing contents
nextPut: aCharacter as: characterClassName
	"Write aCharacter to my stream, escaping it if it is not allowed by the named character class."
	
	self shouldBeImplemented