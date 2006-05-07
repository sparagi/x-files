instantiation
toInclude: characters andProcess: escapeHandlerDictionary
	"Answer a new instance of me, which will recognize the given characters and process escapes as described in escapeHandlerDictionary."

	^(self new)
		characters: characters;
		escapeHandlers: escapeHandlerDictionary
		yourself