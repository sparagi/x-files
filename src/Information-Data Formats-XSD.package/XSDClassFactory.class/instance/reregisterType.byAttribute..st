type resolution
reregisterType: typeObject byAttribute: nameString
	"Register typeObject to be retrieved as an attribute using nameString."

	globalAttributes at: nameString ifPresent: [:value | globalAttributes at: nameString put: typeObject]
