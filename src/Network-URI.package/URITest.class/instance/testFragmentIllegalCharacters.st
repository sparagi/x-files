fragment
testFragmentIllegalCharacters
	"Confirm that, as implied in section 3.5:
		(a) the parser rejects fragments containing characters not in the #fragment character class
	Error on failure."
	| illegalCharacters |
	
	illegalCharacters := (URI characterClass: #anywhere) difference: (URI characterClass: #query).
	illegalCharacters do: [:char | | illegalFragment uriString |
		illegalFragment := 'place', char asString, 'go'.
		uriString := 'scheme:restOfURI#', illegalFragment.
		self should: [URI fromString: uriString] raise: IllegalURIException]
