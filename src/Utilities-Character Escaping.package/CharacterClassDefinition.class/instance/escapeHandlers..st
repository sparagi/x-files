accessing
escapeHandlers: aDictionary
	"Set escape handlers which will handle escape sequences in the context I represent."

	(characters notNil 
		and: [aDictionary notNil] 
		and: [characters includesAnyOf: aDictionary keys])
			ifTrue: [self inconsistentDefinitionError].
	escapeHandlers := aDictionary