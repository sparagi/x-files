accessing
writeSelectorForAttribute: attributeName
	"Answer the symbol which one would send to set the instance variable corresponding to attributeName."

	^attributeSelectors at: attributeName ifAbsent: [nil]