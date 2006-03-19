accessing
writeSelectorForAttribute: attributeName is: selectorSymbol
	"Set the symbol which one would send to set the instance variable corresponding to attributeName."

	attributeSelectors at: attributeName put: selectorSymbol