test generation
generateApplicableFacetTests
	"Test applicable facet lists of built-in XSD datatypes."
	"self generateApplicableFacetTests"
	
	| resultTable |
	resultTable := #(
		"Class						applicable facets"
		('XSDAnyURI'				'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDBase64Binary'			'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDBoolean'				'#(pattern whiteSpace)')
		('XSDByte'					'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive totalDigits fractionDigits)')
		('XSDDate'					'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive)')
		('XSDDateTime'			'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive)')
		('XSDDecimal'				'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive totalDigits fractionDigits)')
		('XSDDouble'				'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive)')
		('XSDDuration'				'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive)')
		('XSDENTITIES'			'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDENTITY'				'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDFloat'					'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive)')
		('XSDGDay'					'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive)')
		('XSDGMonth'				'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive)')
		('XSDGMonthDay'			'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive)')
		('XSDGYear'				'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive)')
		('XSDGYearMonth'			'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive)')
		('XSDHexBinary'			'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDID'					'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDIDREF'				'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDIDREFS'				'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDInt'					'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive totalDigits fractionDigits)')
		('XSDInteger'				'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive totalDigits fractionDigits)')
		('XSDLanguage'			'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDLong'					'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive totalDigits fractionDigits)')
		('XSDNCName'				'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDNMTOKEN'			'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDNMTOKENS'			'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDNOTATION'			'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDName'				'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDNegativeInteger'		'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive totalDigits fractionDigits)')
		('XSDNonNegativeInteger'	'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive totalDigits fractionDigits)')
		('XSDNonPositiveInteger'	'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive totalDigits fractionDigits)')
		('XSDNormalizedString'		'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDPositiveInteger'		'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive totalDigits fractionDigits)')
		('XSDQName'				'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDShort'					'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive totalDigits fractionDigits)')
		('XSDString'				'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDTime'					'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive)')
		('XSDToken'				'#(length minLength maxLength pattern enumeration whiteSpace)')
		('XSDUnsignedByte'		'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive totalDigits fractionDigits)')
		('XSDUnsignedInt'			'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive totalDigits fractionDigits)')
		('XSDUnsignedLong'		'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive totalDigits fractionDigits)')
		('XSDUnsignedShort'		'#(pattern enumeration whiteSpace maxInclusive maxExclusive minInclusive minExclusive totalDigits fractionDigits)')).
		
	resultTable do: [:resultArray | | className answer method |
		className := resultArray at: 1.
		answer := resultArray at: 2. 
		method := String streamContents: [:stream |
			stream
				nextPutAll: 'testApplicableFacets', className;
				cr;
				nextPutAll: '	"From table B1.a and B1.b Simple Types & Applicable Facets in XML Schema Part 0: Primer Second Edition."';
				cr;
				nextPutAll: '	"Automatically generated by class>>generateApplicableFacetTests; do not edit here."';
				cr;
				cr;
				nextPutAll: '	self should: [', className, ' applicableFacets = ', answer, ']';
				cr].
		self compile: method classified: 'constraining facets']