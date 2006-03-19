initialization
initialize
	"Populate my constraining facets."

	super initialize.
	constrainingFacets
		at: #maxInclusive put: 65535