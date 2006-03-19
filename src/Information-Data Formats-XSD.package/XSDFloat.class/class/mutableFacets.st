constraining facets
mutableFacets
	"Answer the subset of applicableFacets my subtypes can change."
	
	^super mutableFacets copyWithout: #whiteSpace
