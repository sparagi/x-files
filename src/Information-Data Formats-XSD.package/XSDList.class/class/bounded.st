fundamental facets
bounded
	"Answer whether my instances are bounded."
	
	| facets |
	facets := self constrainingFacets.
	^(facets includes: #length) or: [
		(facets includes: #minLength) and: [facets includes: #maxLength]]
