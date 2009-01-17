scheme
testSchemeNonLetterBeginning
	"Confirm that, as described in section 3.1:
		(a) the parser and setter reject schemes that do not begin with a letter.
	Error on failure."
	| nonLetters |
	
	nonLetters := (URI characterClass: #scheme) difference: (URI characterClass: #ALPHA).
	nonLetters do: [:char | | illegalScheme uriString uriObject |
		illegalScheme := char asString, 'scheme'.
		uriString := illegalScheme, ':restOfURI'.
		uriObject := URI withScheme: nil.
		self should: [URI fromString: uriString] raise: IllegalURIException.
		self should: [URI withScheme: illegalScheme] raise: IllegalURIException.
		self should: [uriObject scheme: illegalScheme] raise: IllegalURIException]