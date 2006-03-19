initialization
initialize
	"Populate my constraining facets."

	super initialize.
	constrainingFacets
	    at: #minInclusive put: -32768;
          at: #maxInclusive put: 32767