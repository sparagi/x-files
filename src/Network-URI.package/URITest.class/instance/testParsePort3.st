port
testParsePort3
	"Empty (not undefined) port."

	| uri uriString |
	uriString _ 'scheme://host:/'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri authority port = -1].

