initialization
initialize
	"Populate my constraining facets."

	super initialize.
	constrainingFacets
      	at: #minInclusive put: -9223372036854775808;
		at: #maxInclusive put: 9223372036854775807
