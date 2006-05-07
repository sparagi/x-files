fragment
testParseFragment3
	"Relative path, query, then fragment."

	| uri uriString |
	uriString _ '/path/to/resource?query#fragment'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri query = 'query'].
	self should: [uri fragment = 'fragment'].