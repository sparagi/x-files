test escape handler
testDelimiters
	"Confirm that delimiters are stored and regurgitated OK."

	| escape |
	escape := CharacterEscapeHandler beginningWith: '%'.
	self should: [escape beginning = '%'].
	
	escape := CharacterEscapeHandler beginningWith: '##'.
	self should: [escape beginning = '##'].
	
	"Nil beginning should raise an exception."
	self should: [escape := CharacterEscapeHandler beginningWith: nil] raise: InvalidCharacterEscape.
	
	escape := CharacterEscapeHandler beginningWith: '&' endingWith: ';'.
	self should: [escape ending = ';'].
	
	escape := CharacterEscapeHandler beginningWith: '##' endingWith: '##'.
	self should: [escape ending = '##'].
	
	"Empty ending should automatically transmute to nil."
	escape := CharacterEscapeHandler beginningWith: '%' endingWith: ''.
	self
		should: [escape ending isNil].
		
	"Explicitly setting a nil ending should be allowed."
	escape := CharacterEscapeHandler beginningWith: '%' endingWith: nil.
	self
		should: [escape ending isNil].
		
	escape endMarker: ';'.
	self should: [escape ending = ';'].
	
	escape beginMarker: '&'.
	self should: [escape beginning = '&'].
	