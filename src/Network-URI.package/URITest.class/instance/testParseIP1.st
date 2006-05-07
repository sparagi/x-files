ip
testParseIP1
	"Normal IP address."

	| uri uriString |
	uriString _ 'scheme://10.0.0.2/'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri authority asString = '10.0.0.2'].

