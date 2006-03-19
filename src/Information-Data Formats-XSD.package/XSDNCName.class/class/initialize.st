initialization
initialize
	"Populate my constraining facets."

	super initialize.
	"pattern matches production 4 from the Namespaces in XML spec"
	constrainingFacets at: #pattern put: '[\i-[:]][\c-[:]]*' 