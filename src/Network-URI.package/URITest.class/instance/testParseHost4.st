host
testParseHost4
	"Qualified hostname."

	| uri uriString |
	uriString _ '//host.qualified/'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri authority host asString = 'host.qualified'].

