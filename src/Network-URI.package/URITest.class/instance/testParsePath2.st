path
testParsePath2
	"A relative path."

	| uri uriString |
	uriString _ 'rel/ative/path'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self should: [uri path size = 3].