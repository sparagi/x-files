type resolution
registerType: typeObject byName: nameString
	"Register typeObject for future retrieval using the name nameString."

	| typeArray namespace typeDictionary type |
	
	typeArray _ nameString subStrings: ':'.
	typeArray size = 1 ifTrue: [
		namespace _ ''.
		type _ typeArray at: 1].
	typeArray size = 2 ifTrue: [
		namespace _ typeArray at: 1.
		type _ typeArray at: 2].
	
	namespace = xsdPrefix ifTrue: [self error: 'registering new standard types is not allowed'].
	
	typeDictionary _ knownTypes at: namespace ifAbsentPut: [Dictionary new].
	typeDictionary at: type put: typeObject.
