examples
test2396ParseTelnet
	"From section 1.3."

	| uri uriString |

	uriString _ 'telnet://melvyl.ucop.edu/'.
	uri _ URI fromString: uriString.

	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque]