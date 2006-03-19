type resolution
reregisterType: typeObject byElement: nameString
	"Register typeObject to be retrieved as an element using nameString."

	globalElements at: nameString ifPresent: [:value | globalElements at: nameString put: typeObject]
