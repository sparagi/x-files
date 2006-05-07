query
testParseQuery8
	"According to the BNF, there must be something besides questions, but according to the resolution examples, a relative URI containing only a query is just fine.  Since the latter is in common usage, we deviate from the BNF."

	| uri uriString |
	uriString _ '?query'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri query = 'query'].


