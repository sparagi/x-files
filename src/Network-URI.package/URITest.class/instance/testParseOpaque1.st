opaque
testParseOpaque1
	"Normal opaque part."

	| uri uriString |
	uriString _ 'scheme:opaque'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self should: [uri isOpaque].
	self should: [uri opaquePart = 'opaque'].

