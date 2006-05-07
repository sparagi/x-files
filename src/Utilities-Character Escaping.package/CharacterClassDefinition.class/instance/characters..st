accessing
characters: aSet
	"Set characters which are natively possible in the context I represent."
	
	(aSet notNil 
		and: [escapeHandlers notNil] 
		and: [aSet includesAnyOf: escapeHandlers keys])
			ifTrue: [self inconsistentDefinitionError].
	characters := aSet asIdentitySet.