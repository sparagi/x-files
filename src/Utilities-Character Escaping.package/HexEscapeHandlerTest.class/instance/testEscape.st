testing
testEscape
	"Escape some characters. Confirm escaped characters are in
	correct case & have correct beginning & end markers."
	| escape cr lf |
	cr := Character cr.
	lf := Character lf.
	escape := HexEscapeHandler beginningWith: ''.
	self
		should: [(escape escape: cr)
				= '0D'];
		
		should: [(escape escape: lf)
				= '0A'].
	escape := HexEscapeHandler beginningWith: '%'.
	self
		should: [(escape escape: cr)
				= '%0D'];
		
		should: [(escape escape: lf)
				= '%0A'].
	escape := HexEscapeHandler beginningWith: '#' endingWith: '#'.
	self
		should: [(escape escape: cr)
				= '#0D#'];
		
		should: [(escape escape: lf)
				= '#0A#'].
	escape := HexEscapeHandler beginningWith: '##' endingWith: '##'.
	escape caseMessage: #translateToUppercase.
	self
		should: [(escape escape: cr)
				= '##0D##'];
		
		should: [(escape escape: lf)
				= '##0A##'].
	escape := HexEscapeHandler beginningWith: '&&' endingWith: ';'.
	escape caseMessage: #translateToLowercase.
	self
		should: [(escape escape: cr)
				= '&&0d;'];
		
		should: [(escape escape: lf)
				= '&&0a;'].
	escape := HexEscapeHandler beginningWith: '&' endingWith: ';;'.
	self
		should: [(escape escape: cr)
				= '&0D;;'];
		
		should: [(escape escape: lf)
				= '&0A;;']