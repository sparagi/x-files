type resolution
typeByElement: nameString
	"Answer the XSDSimpleType or XSDComplexType associated with the global element named nameString."

	^globalElements at: nameString