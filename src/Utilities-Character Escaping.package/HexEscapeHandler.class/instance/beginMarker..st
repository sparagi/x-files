accessing
beginMarker: aString
	"Set my beginning marker to aString."

	aString ifNil: [self error: 'Nil is not a valid beginning delimiter for an escape sequence'].
	beginMarker _ aString