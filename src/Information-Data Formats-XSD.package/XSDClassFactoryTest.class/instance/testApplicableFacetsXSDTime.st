constraining facets
testApplicableFacetsXSDTime
	"From table B1.a and B1.b Simple Types & Applicable Facets in XML Schema Part 0: Primer Second Edition."
	"Automatically generated by class>>generateApplicableFacetTests; do not edit here."

	self should: [XSDTime applicableFacets = #(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive)]