instance creation
beginningWith: aString
	"Answer a new instance of me which parses escape sequences which consist of beginString followed by an encoded character."

	^(self new)
		beginMarker: aString;
		yourself