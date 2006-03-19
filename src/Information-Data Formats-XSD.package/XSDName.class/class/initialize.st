initialization
initialize
	"Populate my constraining facets."

	super initialize.
	"pattern matches production 5 from the XML spec"
	constrainingFacets at: #pattern put: '\i\c*'
