scheme
testSchemeIllegalCharacters
	"Confirm that, as implied in section 3.1:
		(a) the parser and setter reject schemes containing characters not in the #scheme character class
	Error on failure."
	| illegalCharacters |
	
	illegalCharacters := (URI characterClass: #anywhere) difference: (URI characterClass: #scheme).
	illegalCharacters do: [:char | | illegalScheme uriString uriObject |
		illegalScheme := 'sch', char asString, 'eme'.
		uriString := illegalScheme, ':restOfURI'.
		uriObject := URI withScheme: nil.
		char caseOf: {
			[$:] -> [self should: [(URI fromString: uriString) scheme = 'sch']].
			[$/] -> [self should: [(URI fromString: uriString) scheme isNil]].
			[$?] -> [self should: [(URI fromString: uriString) scheme isNil]].
			[$#] -> [self should: [(URI fromString: uriString) scheme isNil]]}
			otherwise: [self should: [URI fromString: uriString] raise: IllegalURI].
		self should: [URI withScheme: illegalScheme] raise: IllegalURI.
		self should: [uriObject scheme: illegalScheme] raise: IllegalURI.]
