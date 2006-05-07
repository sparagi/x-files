host
testParseHost2
	"Empty host."

	| uri uriString |
	uriString _ 'scheme:///path/to/resource'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri authority host asString = ''].

