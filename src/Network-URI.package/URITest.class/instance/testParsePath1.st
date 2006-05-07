path
testParsePath1
	"The empty URI."

	| uri uriString |
	uriString _ ''.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self should: [uri path isNil].
	self should: [uri query isNil].
	self should: [uri fragment isNil].