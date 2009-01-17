examples
test3986Equivalence2
	"From section 6.2.3."
	| uriStringA uriStringB uriStringC uriStringD uriObjectA uriObjectB uriObjectC uriObjectD |

	uriStringA := 'http://example.com'.
	uriStringB := 'http://example.com/'.
	uriStringC := 'http://example.com:/'.
	uriStringD := 'http://example.com:80/'.
	uriObjectA := URI fromString: uriStringA.
	uriObjectB := URI fromString: uriStringB.
	uriObjectC := URI fromString: uriStringB.
	uriObjectD := URI fromString: uriStringB.
	
	self should: [uriObjectA = uriObjectB].
	self should: [uriObjectB = uriObjectC].
	self should: [uriObjectC = uriObjectD].
	self should: [uriObjectD = uriObjectA].