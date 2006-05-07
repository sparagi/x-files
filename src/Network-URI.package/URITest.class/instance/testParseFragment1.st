fragment
testParseFragment1
	"Query, then fragment."

	| uri uriString |
	uriString _ 'scheme://host/path/to/resource?query#fragment'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri query = 'query'].
	self should: [uri fragment = 'fragment'].