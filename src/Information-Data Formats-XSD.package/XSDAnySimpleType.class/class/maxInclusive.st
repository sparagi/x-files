constraining facets
maxInclusive
	"Answer the maximum value (inclusive) which my instances may have.  Signal FacetUnsupported if a maximum value is meaningless for my instances."
	^(self applicableFacets includes: #maxInclusive)
		ifTrue: [constrainingFacets at: #maxInclusive ifAbsent: nil]
		ifFalse: [FacetUnsupported signal]
