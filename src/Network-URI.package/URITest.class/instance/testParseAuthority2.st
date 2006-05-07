authority
testParseAuthority2
	"A relative URI with empty (but defined) authority."

	| uri uriString |
	uriString _ '//'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self shouldnt: [uri authority isNil].
	self shouldnt: [uri isOpaque].

