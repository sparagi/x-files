processing
processElement: xmlElement
	"I add an element, as described by xmlElement."
	"We process the following, and ignore all others:
		name or ref attribute
		type attribute or simpleType or complexType element
		default or fixed attribute
		maxOccurs and minOccurs attribute"

	|  elementRef elementName type minOccurs maxOccurs |
	elementRef _ xmlElement attributeAt: 'ref' ifAbsent: [nil].
	elementName _ xmlElement attributeAt: 'name' ifAbsent: [elementRef].
	
	minOccurs _ xmlElement attributeAt: 'minOccurs' ifAbsent: [1].
	maxOccurs _ xmlElement attributeAt: 'maxOccurs' ifAbsent: [1].
	
	"Stub out this element."
	self createElement: elementName from: minOccurs to: maxOccurs.
	
	"Try to determine our type."
	type _ elementRef
		ifNotNil: [self typeByElement: elementRef]
		ifNil: [ | typeName |
			typeName _ xmlElement attributeAt: 'type' ifAbsent: [nil].
			typeName
				ifNil: [ | typeNode |
					typeNode _ xmlElement topElement.
					(typeNode tag = (xsdPrefix, ':simpleType'))
						ifTrue: [self processSimpleType: xmlElement topElement]
						ifFalse: [self processComplexType: xmlElement topElement]]
				ifNotNil: [self typeByName: typeName]].

	type
		ifNil: [self registerForwardReference: xmlElement]
		ifNotNil: [
			"Reregister this element in case we are resolving a forward reference."
			self reregisterType: type byElement: elementName.
			"Create the guts of this element."
			type createParserFor: elementName inClass: self currentClass].

	"If the class we are defining is the top level (Document) class, add this element to the globalElements dictionary."
	(classStack size = 1) ifTrue: [
		self registerType: type byElement: elementName]

	
