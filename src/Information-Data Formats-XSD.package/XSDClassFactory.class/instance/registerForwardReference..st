processing
registerForwardReference: xmlElement
	"I register a forward reference in this xmlElement, to be resolved when typeName is defined."

	| referencesToType thisReference unresolvedStore elementName typeName |
	
	(xmlElement tag = (xsdPrefix, ':element')) ifTrue: [unresolvedStore _ unresolvedElements].
	(xmlElement tag = (xsdPrefix, ':attribute')) ifTrue: [unresolvedStore _ unresolvedAttributes].
			
	elementName _ xmlElement attributeAt: 'name' ifAbsent: [nil].
	
	"Either I will include a type name, or I will refer to another attribute or element, which will include a type name."
	typeName _ xmlElement attributeAt: 'type' ifAbsent: [nil].
	typeName ifNil: [ | elementRef |
		elementRef _ xmlElement attributeAt: 'ref'.
		typeName _ unresolvedStore at: elementRef].
	
	referencesToType _ forwardReferences at: typeName ifAbsentPut: [Set new].
	
	thisReference _ Array new: 2.
	thisReference at: 1 put: self currentClass.
	thisReference at: 2 put: xmlElement.
	referencesToType add: thisReference.

	"If this is a global element or attribute, it may be referred to later, so we must also index from its name to its type, as we determined it above."
	((classStack size = 1) and: [elementName notNil]) ifTrue: [
		unresolvedStore at: elementName put: typeName].