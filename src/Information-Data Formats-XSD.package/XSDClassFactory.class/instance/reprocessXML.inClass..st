processing
reprocessXML: xml inClass: class
	"I attempt to reprocess an element or attribute now that its type has been resolved."
	
	classStack addLast: class.
	(xml tag = (xsdPrefix, ':element')) ifTrue: [self processElement: xml].
	(xml tag = (xsdPrefix, ':attribute')) ifTrue: [self processAttribute: xml].
	classStack removeLast.
