instance creation
beginningWith: aString
	"Answer a new instance of me which parses hex escape sequences which consist of aString followed by 2 hex characters."

	^(self new)
		beginMarker: aString;
		yourself