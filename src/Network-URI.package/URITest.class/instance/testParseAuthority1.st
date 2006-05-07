authority
testParseAuthority1
	"An absolute URI with empty (but defined) authority."

	| uri uriString |
	uriString _ 'scheme://'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri authority isNil].
	self shouldnt: [uri isOpaque].

