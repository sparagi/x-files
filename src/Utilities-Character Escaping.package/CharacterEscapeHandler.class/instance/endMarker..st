accessing
endMarker: aString
	"Set my end marker to aString."

	endMarker := aString.
	endMarker = '' ifTrue: [endMarker :=  nil].