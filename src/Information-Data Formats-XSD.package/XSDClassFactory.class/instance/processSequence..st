processing
processSequence: xmlElement
	"Process every element at this level, recursing down."

	xmlElement elementsDo: [:element | | handled |
		handled _ false.
		(element name = (xsdPrefix, ':annotation')) ifTrue: [
			"Currently we ignore annotations."
			handled _ true].
		(element name = (xsdPrefix, ':element')) ifTrue: [
			self processElement: element.
			handled _ true].
		(element name = (xsdPrefix, ':complexType')) ifTrue: [
			self processComplexType: element.
			handled _true].
		(element name = (xsdPrefix, ':simpleType')) ifTrue: [
			self processSimpleType: element.
			handled_true].
		handled ifFalse: [
			self error: 'don''t know how to handle element']].

