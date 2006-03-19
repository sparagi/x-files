initialization
initializeFromXML: xml withTypeResolver: resolver
	"Set my instance variables to reflect the simple type described in xml."

	| restriction template specificRestriction value newRestrictionCode |	
	"Assume this is an xsd:simpleType element, with a single xsd:restriction element."
	restriction _ xml topElement.

	template _ resolver typeByName: (restriction attributeAt: 'base').
	conversionSelector _ template conversionSelector.
	restrictionCode _ template restrictionCode.
	
	"Add to restrictionCode to match restriction."
	specificRestriction _ ((restriction topElement tag) subStrings: ':') at: 2.
	value _ restriction topElement attributeAt: 'value'.
	newRestrictionCode _ String streamContents: [:stream |
		specificRestriction = 'maxExclusive' ifTrue: [
			stream
				nextPutAll: '	self assert: [value <', value, '].';
				cr].
		specificRestriction = 'pattern' ifTrue: [
			stream
				nextPutAll: '	self assert: [value matchesRegex: ''', value, '''].';
				cr]].
				
	restrictionCode _ restrictionCode, newRestrictionCode