constraining facets
bounded
	"Answer whether my instances are bounded."
	
	| facets |
	facets := self constrainingFacets.
	^((facets includes: #minInclusive) or: [facets includes: #minExclusive]) and:
		[(facets includes: #maxInclusive) or: [facets includes: #maxExclusive]]
