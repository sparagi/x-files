examples
test2396ParseGopher
	"From section 1.3."

	| uri uriString |

	uriString _ 'gopher://spinaltap.micro.umn.edu/00/Weather/California/Los%20Angeles'.
	uri _ URI fromString: uriString.

	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque]