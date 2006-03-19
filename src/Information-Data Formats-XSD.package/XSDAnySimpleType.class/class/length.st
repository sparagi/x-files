constraining facets
length
	"Answer the length my instances must have, or nil if I don't specify one.  Signal FacetUnsupported if it is meaningless to constrain the length of my instances."
	^(self applicableFacets includes: #length)
		ifTrue: [constrainingFacets at: #length ifAbsent: nil]
		ifFalse: [FacetUnsupported signal]
