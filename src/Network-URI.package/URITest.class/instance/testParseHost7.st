host
testParseHost7
	"Hostname with funny characters."

	| uri uriString |
	uriString _ 'scheme://h-st/'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri authority host asString = 'h-st'].

