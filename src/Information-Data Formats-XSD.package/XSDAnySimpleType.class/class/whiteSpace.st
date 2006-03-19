constraining facets
whiteSpace
	"Answer my algorithm for normalizing white space in my instances.  Signal FacetUnsupported if it is meaningless to normalize white space in my instances."
	^(self applicableFacets includes: #whiteSpace)
		ifTrue: [constrainingFacets at: #whiteSpace ifAbsent: nil]
		ifFalse: [FacetUnsupported signal]
