examples
test2396ParseHTTP2
	"From appendix B."

	| uri uriString |
	uriString _ 'http://www.ics.uci.edu/pub/ietf/uri/#Related'.
	uri _ URI fromString: uriString.

	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri fragment = 'Related']