initialization
initialize
	"Populate my constraining facets."

	super initialize.
	"pattern specifies the content of section 2.12 of XML 1.0e2 and RFC 3066 (Revised version of RFC 1766)"
	constrainingFacets at: #pattern put: '[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*'
