path
testParsePath11
	"No path."

	| uri uriString |
	uriString _ 'scheme://host'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self should: [uri path isNil].