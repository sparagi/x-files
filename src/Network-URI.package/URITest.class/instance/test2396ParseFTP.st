examples
test2396ParseFTP
	"From section 1.3."

	| uri uriString |

	uriString _ 'ftp://ftp.is.co.za/rfc/rfc1808.txt'.
	uri _ URI fromString: uriString.

	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque]