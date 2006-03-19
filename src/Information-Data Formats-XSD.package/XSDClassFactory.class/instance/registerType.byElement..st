type resolution
registerType: typeObject byElement: nameString
	"Register typeObject to be retrieved as an element using nameString."

	globalElements at: nameString put: typeObject