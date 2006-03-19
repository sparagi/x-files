processing
processComplexType: xmlElement
	"I answer an XSDComplexType subclass, as described by xmlElement."

	| nameSnippet newClass |
	
	"Assume this is an xsd:complexType element."
	nameSnippet _ xmlElement attributeAt: 'name' ifAbsent: ['Anonymous'].
	
	"Create the class."
	newClass _ self createSubclassOf: XSDComplexType namedNear: nameSnippet.
	
	"Assume the first element is an xsd:sequence element."
	self processSequence: xmlElement topElement.
	
	"Assume the rest of the elements are xsd:attribute elements."
	xmlElement tagsNamed: (xsdPrefix, ':attribute') asSymbol do: [:attribute |
		self processAttribute: attribute].

	"Pop the subclass; we're done configuring it."
	classStack removeLast.
	
	"If this is a named type, resolve forward references."
	nameSnippet = 'Anonymous' ifFalse: [
		self registerType: newClass byName: nameSnippet.
		self resolveReferencesToType: nameSnippet].
	
	^newClass