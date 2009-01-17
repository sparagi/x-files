instantiation
toInclude: characters andProcess: escapeHandlerCollection
	"Answer a new instance of me, which will recognize the given characters and process escapes as described in escapeHandlerCollection."

	^(self new)
		characters: characters;
		escapeHandlers: escapeHandlerCollection
		yourself