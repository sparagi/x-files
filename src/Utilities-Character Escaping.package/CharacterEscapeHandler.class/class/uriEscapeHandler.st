instance creation
uriEscapeHandler
	"Answer an instance of one of my subclasses, configured for handling URI escape sequences."

	^HexEscapeHandler beginningWith: '%'