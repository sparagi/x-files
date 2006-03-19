initialization
initialize
	"Populate my constraining facets."

	super initialize.
	constrainingFacets
		at: #fractionDigits put: 0;
		at: #pattern put: '[\-+]?[0-9]+'