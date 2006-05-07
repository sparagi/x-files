fragment
testParseFragment10
	"Fragment only."

	| uri uriString |
	uriString _ '#fragment'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri fragment = 'fragment'].