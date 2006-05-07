path
testParsePath8
	"Some .'s."

	| uri uriString |
	uriString _ '/path/to/./resource/'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self should: [uri path size = 6].