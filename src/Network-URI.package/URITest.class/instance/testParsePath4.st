path
testParsePath4
	"A relative path with a trailing $/."

	| uri uriString |
	uriString _ 'trailing/'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self should: [uri path size = 2].