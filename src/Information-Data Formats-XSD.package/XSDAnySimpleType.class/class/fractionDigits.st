constraining facets
fractionDigits
	"Answer the maximum number of fractional digits which can be required to express values of my instances.  Signal FacetUnsupported if number of fractional digits is meaningless for my instances."
	^(self applicableFacets includes: #fractionDigits)
		ifTrue: [constrainingFacets at: #fractionDigits ifAbsent: nil]
		ifFalse: [FacetUnsupported signal]
