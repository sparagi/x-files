initialization
initialize
	"Populate my constraining facets."

	super initialize.
	constrainingFacets
	    at: #minInclusive put: -128;
          at: #maxInclusive put: 127