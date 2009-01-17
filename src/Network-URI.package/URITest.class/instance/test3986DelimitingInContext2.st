examples
test3986DelimitingInContext2
	"From section C."
	| stringContainingURIs uriObjectsByLocation uriObjectA uriObjectB uriObjectC |

	stringContainingURIs := 'Yes, Jim, I found it under "http://www.w3.org/Addressing/",
but you can probably pick it up from <ftp://foo.example.
com/rfc/>.  Note the warning in <http://www.ics.uci.edu/pub/
ietf/uri/historical.html#WARNING>'.
	uriObjectsByLocation := URI findAllIn: stringContainingURIs.
	
	self should: [uriObjectsByLocation size = 3].
	self shouldnt: [uriObjectA := uriObjectsByLocation at: 28] raise: [Error].
	self shouldnt: [uriObjectB := uriObjectsByLocation at: 98] raise: [Error].
	self shouldnt: [uriObjectC := uriObjectsByLocation at: 150] raise: [Error].
	self should: [uriObjectA asString = 'http://www.w3.org/Addressing/'].
	self should: [uriObjectB asString = 'ftp://foo.example.com/rfc/'].
	self should: [uriObjectC asString = 'http://www.ics.uci.edu/pub/ietf/uri/historical.html#WARNING'].
	