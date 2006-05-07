port
testParsePort4
	"Ports are numeric; non-numeric ports become part of a regName."

	| uri uriString |
	uriString _ 'scheme://host:port/'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri authority name = 'host:port']


