accessing
atElement: nameString
	"Answer the XSDSimpleType or XSDComplexType subclass associated with the global element named nameString, or nil if there is none."
	
	^(contents at: #allElements) at: nameString ifAbsent: [nil]
	