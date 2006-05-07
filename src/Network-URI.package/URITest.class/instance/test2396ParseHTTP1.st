examples
test2396ParseHTTP1
	"From section 1.3."

	| uri uriString |

	uriString _ 'http://www.math.uio.no/faq/compression-faq/part1.html'.
	uri _ URI fromString: uriString.

	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque]