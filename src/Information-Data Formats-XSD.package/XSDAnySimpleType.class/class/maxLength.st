constraining facets
maxLength
	"Answer the maximum length my instances must have, or nil if I don't specify one.  Signal FacetUnsupported if it is meaningless to constrain the length of my instances."
	^(self applicableFacets includes: #maxLength)
		ifTrue: [constrainingFacets at: #maxLength ifAbsent: nil]
		ifFalse: [FacetUnsupported signal]
