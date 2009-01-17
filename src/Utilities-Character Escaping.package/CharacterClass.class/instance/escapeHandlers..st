accessing
escapeHandlers: aCollection
	"Set escape handlers which will handle escape sequences in the context I represent."
			
	(self escapeHandlers: aCollection areCompatibleWith: characters) ifTrue: [
		escapeHandlers := aCollection]
