examples
test3986Components2
	"From section 3."
	| uriString uriObject |

	uriString := 'urn:example:animal:ferret:nose'.
	uriObject := URI fromString: uriString.

	self should: [uriObject scheme = 'urn'].
	self shouldnt: [uriObject authority isNil].
	self should: [uriObject path = 'example:animal:ferret:nose'].
	self should: [uriObject query isNil].
	self should: [uriObject fragment isNil].	
