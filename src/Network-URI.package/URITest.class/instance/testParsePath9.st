path
testParsePath9
	"The minimal hierarchical part."

	| uri uriString |
	uriString _ '/'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self should: [uri path size = 2].