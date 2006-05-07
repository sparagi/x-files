port
testParsePort1
	"Normal port."

	| uri uriString |
	uriString _ 'scheme://host:123/'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri authority port = 123].

