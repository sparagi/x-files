type resolution
typeByAttribute: nameString
	"Answer the XSDSimpleType associated with the global attribute named nameString."

	^globalAttributes at: nameString