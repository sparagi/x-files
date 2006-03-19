type resolution
registerType: typeObject byAttribute: nameString
	"Register typeObject to be retrieved as an attribute using nameString."

	globalAttributes at: nameString put: typeObject