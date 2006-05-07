query
testParseQuery1
	"Absolute query."

	| uri uriString |
	uriString _ 'scheme://host/path/to/resource?query'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri query = 'query'].

