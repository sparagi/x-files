query
testParseQuery2
	"Relative query."

	| uri uriString |
	uriString _ '/path/to/resource?query'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri query = 'query'].

