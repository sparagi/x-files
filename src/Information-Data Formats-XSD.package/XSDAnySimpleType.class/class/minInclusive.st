constraining facets
minInclusive
	"Answer the minimum value (inclusive) which my instances may have.  Signal FacetUnsupported if a minimum value is meaningless for my instances."
	^(self applicableFacets includes: #minInclusive)
		ifTrue: [constrainingFacets at: #minInclusive ifAbsent: nil]
		ifFalse: [FacetUnsupported signal]
