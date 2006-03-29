initialization
initialize
	"Populate my standard simple types."

	super initialize.
	StandardSimpleTypes _ Dictionary new.
	"StandardSimpleTypes
		at: 'string'	put: (XSDSimpleType withConversionSelector: #convertToString:);
		at: 'date'	put: (XSDSimpleType withConversionSelector: #convertToDate:);
		at: 'decimal'	put: (XSDSimpleType withConversionSelector: #convertToFloat:);
		at: 'NMTOKEN'	put: (XSDSimpleType withConversionSelector: #convertToString:);
		at: 'positiveInteger'	put: (XSDSimpleType withConversionSelector: #convertToInteger:)."