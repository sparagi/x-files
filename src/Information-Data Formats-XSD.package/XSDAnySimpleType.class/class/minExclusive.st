constraining facets
minExclusive
	"Answer the minimum value (exclusive) which my instances may have.  Signal FacetUnsupported if a minimum value is meaningless for my instances."
	^(self applicableFacets includes: #minExclusive)
		ifTrue: [constrainingFacets at: #minExclusive ifAbsent: nil]
		ifFalse: [FacetUnsupported signal]
