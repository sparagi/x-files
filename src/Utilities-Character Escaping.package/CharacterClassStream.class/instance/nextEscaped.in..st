parsed contents
nextEscaped: anInteger in: characterClassName
	"If my next character or escape sequence is in the named character class, increment my position to after it and answer it (literally); otherwise answer nil."
	"the next N characters or escape sequences in the named character class, literally"
	
	self shouldBeImplemented