testing
testUnescape
	"Unescape some well-formed characters."
	
	| escape cr lf |
	cr := Character cr.
	lf := Character lf.
	escape := HexEscapeHandler beginningWith: ''.
	self
		should: [(escape unescape: '0D')
				= cr];
		
		should: [(escape unescape: '0a')
				= lf].
	escape := HexEscapeHandler beginningWith: '%'.
	self
		should: [(escape unescape: '%0D')
				= cr];
		
		should: [(escape unescape: '%0a')
				= lf].
	escape := HexEscapeHandler beginningWith: '#' endingWith: '#'.
	self
		should: [(escape unescape: '#0D#')
				= cr];
		
		should: [(escape unescape: '#0a#')
				= lf].
	escape := HexEscapeHandler beginningWith: '##' endingWith: '##'.
	escape caseMessage: #translateToUppercase.
	self
		should: [(escape unescape: '##0D##')
				= cr];
		
		should: [(escape unescape: '##0a##')
				= lf].
	escape := HexEscapeHandler beginningWith: '&&' endingWith: ';'.
	escape caseMessage: #translateToLowercase.
	self
		should: [(escape unescape: '&&0d;')
				= cr];
		
		should: [(escape unescape: '&&0A;')
				= lf].
	escape := HexEscapeHandler beginningWith: '&' endingWith: ';;'.
	self
		should: [(escape unescape: '&0d;;')
				= cr];
		
		should: [(escape unescape: '&0A;;')
				= lf]