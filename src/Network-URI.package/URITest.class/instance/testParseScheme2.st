scheme
testParseScheme2
	"You don't need much to have a valid URI."

	| uri uriString |
	uriString _ 'scheme:/'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri scheme = 'scheme'].

