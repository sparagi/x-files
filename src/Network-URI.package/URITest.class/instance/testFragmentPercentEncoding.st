fragment
testFragmentPercentEncoding
	"Confirm that, as implied in section 3.5:
		(a) the parser does percent decoding in a fragment
		(b) the generator does percent encoding in a fragment."
	| uriStringA uriObjectA uriObjectB |
	
	uriStringA := 'scheme:restOfURI#%76%61%6C%75%65'.
	uriObjectA := URI fromString: uriStringA.
	uriObjectB := URI withScheme: 'scheme'.
	uriObjectB fragment: '[place]'.
	self should: [uriObjectA fragment = 'value'].
	self should: [uriObjectA asString = 'scheme:restOfURI#value'].
	self should: [uriObjectB fragment = '[place]'].
	self should: [uriObjectB asString = 'scheme:#%5Bplace%5D']	