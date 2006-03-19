constraining facets
enumeration
	"Answer a list from which values of my instances must be taken, or nil if I don't specify one.  Signal FacetUnsupported if it is meaningless to supply a list of specific values for my instances."
	^(self applicableFacets includes: #enumeration)
		ifTrue: [constrainingFacets at: #enumeration ifAbsent: nil]
		ifFalse: [FacetUnsupported signal]
