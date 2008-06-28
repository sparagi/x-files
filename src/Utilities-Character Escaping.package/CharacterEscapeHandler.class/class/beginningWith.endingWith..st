instance creation
beginningWith: beginString endingWith: endString
	"Answer a new instance of me which parses escape sequences which consist of beginString followed by an encoded character followed by endString."

	^(self new)
		beginMarker: beginString;
		endMarker: endString;
		yourself