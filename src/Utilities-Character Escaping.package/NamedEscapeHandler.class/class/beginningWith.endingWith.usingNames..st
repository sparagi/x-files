instance creation
beginningWith: beginString endingWith: endString usingNames: nameDictionary
	"Answer a new instance of me which parses escape sequences which consist of beginString followed by a name from nameDictionary followed by endString."

	^(self new)
		beginMarker: beginString;
		endMarker: endString;
		namesToValues: nameDictionary;
		yourself