examples
test2396ParseMailto
	"From section 1.3."

	| uri uriString |

	uriString _ 'mailto:mduerst@ifi.unizh.ch'.
	uri _ URI fromString: uriString.

	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self should: [uri isOpaque]