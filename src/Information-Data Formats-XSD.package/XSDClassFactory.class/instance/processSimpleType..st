processing
processSimpleType: xmlElement
	"I answer an XSDSimpleType instance."

	| nameSnippet type |
		
	"Assume this is an xsd:simpleType element."	
	type _ XSDSimpleType fromXML: xmlElement withTypeResolver: self.
	
	"If I have a name, register this new type & resolve any forward references."
	nameSnippet _ xmlElement attributeAt: 'name' ifAbsent: [nil].
	nameSnippet ifNotNil: [
		self registerType: type byName: nameSnippet.
		self resolveReferencesToType: nameSnippet].

	^type

	
	
	

