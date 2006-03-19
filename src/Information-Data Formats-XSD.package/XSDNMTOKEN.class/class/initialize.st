initialization
initialize
	"Populate my constraining facets."

	super initialize.
	"pattern matches production 7 from the XML spec"
	constrainingFacets at: #pattern put: '\c+'
