instance creation
beginningWith: beginString endingWith: endString
	"Answer a new instance of me which parses hex escape sequences which consist of beginString followed by 2 hex characters followed by endString."

	^(self new)
		beginMarker: beginString;
		endMarker: endString;
		yourself