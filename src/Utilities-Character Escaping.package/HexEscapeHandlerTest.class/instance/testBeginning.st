testing
testBeginning
	"Confirm that the beginning strings come through okay, whether they are one or two characters in length."

	| escape |
	escape := HexEscapeHandler beginningWith: '%'.
	self should: [escape beginning = '%'].
	
	escape := HexEscapeHandler beginningWith: '##'.
	self should: [escape beginning = '##'].