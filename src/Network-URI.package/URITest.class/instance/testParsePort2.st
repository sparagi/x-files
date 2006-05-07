port
testParsePort2
	"No escaped characters can appear in a port; they turn it into a regName."

	| uri uriString |
	uriString _ 'scheme://host:1%323/'.
	uri _ URI fromString: uriString.
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri authority name = 'host:123']


