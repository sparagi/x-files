path
testParsePath10
	"The minimal net path."

	| uri uriString |
	uriString _ '///'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self should: [uri authority host asString = ''].
	self should: [uri path size = 2].