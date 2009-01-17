query
testQueryPercentEncoding
	"Confirm that, as implied in section 3.4:
		(a) the parser does percent decoding in a query
		(b) the generator does percent encoding in a query."
	| uriStringA uriObjectA uriObjectB |
	
	uriStringA := 'scheme:restOfURI?unnecessarilyEscaped=%76%61%6C%75%65&necessarilyEscaped=%23%20%23'.
	uriObjectA := URI fromString: uriStringA.
	uriObjectB := URI withScheme: 'scheme'.
	uriObjectB query: '# #'.
	self should: [uriObjectA query = 'unnecessarilyEscaped=value&necessarilyEscaped=# #'].
	self should: [uriObjectA asString = 'scheme:restOfURI?unnecessarilyEscaped=value&necessarilyEscaped=%23%20%23'].
	self should: [uriObjectB query = '# #'].
	self should: [uriObjectB asString = 'scheme:?%23%20%23']	