constraining facets
totalDigits
	"Answer the maximum number of digits which can be required to express values of my instances.  Signal FacetUnsupported if number of digits is meaningless for my instances."
	^(self applicableFacets includes: #totalDigits)
		ifTrue: [constrainingFacets at: #totalDigits ifAbsent: nil]
		ifFalse: [FacetUnsupported signal]
