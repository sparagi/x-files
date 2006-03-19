initialization
initialize
	"Populate my constraining facets."

	super initialize.
	constrainingFacets
	    at: #minInclusive put: -2147483648;
          at: #maxInclusive put: 2147483647