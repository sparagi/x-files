constraining facets
pattern
	"Answer the regular expression my instances must match, or nil if I don't specify one.  Signal FacetUnsupported if it is meaningless to supply a pattern for my instances."
	^(self applicableFacets includes: #pattern)
		ifTrue: [constrainingFacets at: #pattern ifAbsent: nil]
		ifFalse: [FacetUnsupported signal]
