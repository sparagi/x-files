constraining facets
constrainingFacets
	"Answer the subset of applicableFacets I constrain." 
	
	^constrainingFacets
		ifNil: [super constrainingFacets]
		ifNotNil: [constrainingFacets keys]

	