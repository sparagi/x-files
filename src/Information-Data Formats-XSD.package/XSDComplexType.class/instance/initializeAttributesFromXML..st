initialization
initializeAttributesFromXML: xml
	"Initialize my attribute instance variables from xml."

	xml attributes keysAndValuesDo: [:name :value | | selector |
		selector _ self class writeSelectorForAttribute: name.
		selector ifNil: [self error: 'unknown attribute'].
		self perform: selector with: value].
	self errorIfMissingAttributes.
