examples
test3986Components1
	"From section 3."
	| uriString uriObject |

	uriString := 'foo://example.com:8042/over/there?name=ferret#nose'.
	uriObject := URI fromString: uriString.

	self should: [uriObject scheme = 'foo'].
	self should: [uriObject authority = 'example.com:8042'].
	self should: [uriObject path = '/over/there'].
	self should: [uriObject query = 'name=ferret'].
	self should: [uriObject fragment = 'nose'].	
