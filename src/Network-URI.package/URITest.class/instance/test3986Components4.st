examples
test3986Components4
	"From section B."
	| uriString uriObject |

	uriString := 'http://www.ics.uci.edu/pub/ietf/uri/#Related'.
	uriObject := URI fromString: uriString.

	self should: [uriObject scheme = 'http'].
	self should: [uriObject authority = 'www.ics.uci.edu'].
	self should: [uriObject path = '/pub/ietf/uri/'].
	self should: [uriObject query isNil].
	self should: [uriObject fragment = 'Related'].	