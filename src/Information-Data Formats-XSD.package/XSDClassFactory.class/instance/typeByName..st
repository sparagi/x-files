type resolution
typeByName: nameString
	"Answer the XSDSimpleType or XSDComplexType associated with nameString, or nil if there is none yet."

	| typeArray namespace type typeDictionary |
	
	typeArray _ nameString subStrings: ':'.
	typeArray size = 1 ifTrue: [
		namespace _ ''.
		type _ typeArray at: 1].
	typeArray size = 2 ifTrue: [
		namespace _ typeArray at: 1.
		type _ typeArray at: 2].
	
	typeDictionary _ knownTypes at: namespace ifAbsent: [nil].
	^typeDictionary
		ifNil: [nil]
		ifNotNil: [typeDictionary at: type ifAbsent: [nil]]