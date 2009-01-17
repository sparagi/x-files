examples
test3986DelimitingInContext1
	"From section C."
	| stringContainingURIs uriObjectsByLocation uriObjectA uriObjectB uriObjectC |

	stringContainingURIs := 'In practice, URIs are delimited in a variety of ways, but usually within double-quotes "http://example.com/", angle brackets <http://example.com/>, or just by using whitespace:   
	http://example.com/'.
	uriObjectsByLocation := URI findAllIn: stringContainingURIs.
	
	self should: [uriObjectsByLocation size = 3].
	self shouldnt: [uriObjectA := uriObjectsByLocation at: 88] raise: [Error].
	self shouldnt: [uriObjectB := uriObjectsByLocation at: 126] raise: [Error].
	self shouldnt: [uriObjectC := uriObjectsByLocation at: 181] raise: [Error].
	self should: [uriObjectA asString = 'http://example.com/'].
	self should: [uriObjectB asString = 'http://example.com/'].
	self should: [uriObjectC asString = 'http://example.com/'].
	