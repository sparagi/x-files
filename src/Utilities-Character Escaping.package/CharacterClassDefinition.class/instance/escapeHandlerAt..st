accessing
escapeHandlerAt: aCharacter
	"Answer the appropriate escape handler to handle escape sequences beginning with aCharacter in the context I represent."
	
	^escapeHandlers at: aCharacter