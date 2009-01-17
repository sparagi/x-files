accessing
characters: aSet
	"Set characters which are natively possible in the context I represent."
	
	(self escapeHandlers: escapeHandlers areCompatibleWith: aSet) ifTrue: [
		characters := aSet asIdentitySet].