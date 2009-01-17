unescaped contents
next: anInteger in: characterClassName
	"If the next thing on my stream is a valid character or escape sequence according to the named character class, increment my position and answer it (unescaping if necessary); otherwise answer nil."
	"the next N characters in the named character class, unescaped"
	
	self shouldBeImplemented