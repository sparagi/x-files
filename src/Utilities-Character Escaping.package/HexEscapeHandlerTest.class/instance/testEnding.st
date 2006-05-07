testing
testEnding
	"Confirm that the ending strings come through okay, whether they are one or two characters in length."

	| escape |
	escape := HexEscapeHandler beginningWith: '&' endingWith: ';'.
	self should: [escape ending = ';'].
	
	escape := HexEscapeHandler beginningWith: '##' endingWith: '##'.
	self should: [escape ending = '##'].