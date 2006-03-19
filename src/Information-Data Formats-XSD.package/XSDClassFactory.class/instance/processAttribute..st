processing
processAttribute: xmlElement
	"I add an attribute, as described by xmlElement."
	"We process the following, and ignore all others:
		name or ref attribute
		type attribute or simpleType element
		default or fixed attribute
		use attribute"
	
	| elementRef elementName simpleType |
	elementRef _ xmlElement attributeAt: 'ref' ifAbsent: [nil].
	elementName _ xmlElement attributeAt: 'name' ifAbsent: [elementRef].
	
	simpleType _ elementRef
		ifNotNil: [self typeByAttribute: elementRef]
		ifNil: [ | typeName |
			typeName _ xmlElement attributeAt: 'type' ifAbsent: [nil].
			typeName
				ifNil: [self processSimpleType: xmlElement top]
				ifNotNil: [self typeByName: typeName]].

	simpleType
		ifNil: [self registerForwardReference: xmlElement]
		ifNotNil: [
			simpleType _ simpleType adaptFromXML: xmlElement.
			simpleType
				createAttribute: elementName
				inClass: self currentClass].			

	"Reregister this element in case we are resolving a forward reference."
	self reregisterType: simpleType byAttribute: elementName.
	
	"If the class we are defining is the top level (Document) class, add validation information for this element to the globalAttributes dictionary."
	(classStack size = 1) ifTrue: [
		self registerType: simpleType byAttribute: elementName]	

