constraining facets
maxExclusive
	"Answer the maximum value (exclusive) which my instances may have.  Signal FacetUnsupported if a maximum value is meaningless for my instances."
	^(self applicableFacets includes: #maxExclusive)
		ifTrue: [constrainingFacets at: #maxExclusive ifAbsent: nil]
		ifFalse: [FacetUnsupported signal]
