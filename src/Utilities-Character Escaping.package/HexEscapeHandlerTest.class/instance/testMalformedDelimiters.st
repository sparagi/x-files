testing
testMalformedDelimiters
	"Test silly delimiters & combinations of delimiters."
	"Nil beginnning should raise an exception."
	
	| escape |
	self
		should: [HexEscapeHandler beginningWith: nil]
		raise: InvalidCharacterEscape.
	"Empty ending should automatically transmute to nil."
	escape := HexEscapeHandler beginningWith: '%' endingWith: ''.
	self
		should: [escape ending isNil].
	"Explicitly setting a nil ending should be allowed."
	escape := HexEscapeHandler beginningWith: '%' endingWith: nil.
	self
		should: [escape ending isNil]