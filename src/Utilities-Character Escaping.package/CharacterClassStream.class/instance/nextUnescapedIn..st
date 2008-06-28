accessing contents
nextUnescapedIn: characterClassName
	"If my next character or escape sequence is in the named character class, increment my position and answer it (literally); otherwise answer nil."
	
	self shouldBeImplemented