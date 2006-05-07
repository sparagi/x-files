testing
isAbsolute
	"Answer whether I am an absolute URI. If I am not an absolute URI, I am a relative URI."
	"All absolute URLs have a scheme."

	^scheme notNil.