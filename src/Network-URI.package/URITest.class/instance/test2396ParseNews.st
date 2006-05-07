examples
test2396ParseNews
	"From section 1.3."

	| uri uriString |

	uriString _ 'news:comp.infosystems.www.servers.unix'.
	uri _ URI fromString: uriString.

	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self should: [uri isOpaque]