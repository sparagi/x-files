query
testQueryIllegalCharacters
	"Confirm that, as implied in section 3.4:
		(a) the parser rejects fragments containing characters not in the #fragment character class
	Error on failure."
	| illegalCharacters |
	
	illegalCharacters := (URI characterClass: #anywhere) difference: (URI characterClass: #query).
	illegalCharacters do: [:char | | illegalQuery uriString |
		illegalQuery := 'whatThe', char asString, 'isUp?'.
		uriString := 'scheme:restOfURI?', illegalQuery.
		char caseOf: {
			[$#] -> [self should: [(URI fromString: uriString) query = 'whatThe']]}
			otherwise: [self should: [URI fromString: uriString] raise: IllegalURI]]
