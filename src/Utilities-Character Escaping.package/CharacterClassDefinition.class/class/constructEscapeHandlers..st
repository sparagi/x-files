utility
constructEscapeHandlers: aCollection
	"Reformat a flat Collection of escape handlers into the dictionary expected by my instances."
	
	| aDictionary |
	aDictionary := IdentityDictionary new.
	aCollection do: [:escapeHandler | | first |
		first := escapeHandler beginning first.
		aDictionary at: first ifPresent: [self inconsistentDefinitionError].
		aDictionary at: first put: escapeHandler].
	^aDictionary