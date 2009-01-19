scheme
testSchemePercentEncoding
	"Confirm that, as implied in section 3.1:
		(a) the parser does no percent decoding in a scheme
		(b) the generator does no percent encoding in a scheme.
	Error on failure."
	| percentEncodedScheme uriString uriObject |
	
	percentEncodedScheme := 'sch%65me'.
	uriString := percentEncodedScheme, ':restOfURI'.
	uriObject := URI withScheme: nil.
	self should: [URI fromString: uriString] raise: IllegalURI.
	self should: [URI withScheme: percentEncodedScheme] raise: IllegalURI.
	self should: [uriObject scheme: percentEncodedScheme] raise: IllegalURI
	
	"Can't test (b) because, based on testSchemeIllegalCharacters, there is no way to get characters that need to be encoded into a scheme to start with."