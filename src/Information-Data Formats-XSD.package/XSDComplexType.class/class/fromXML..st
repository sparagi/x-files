instance creation
fromXML: xml
	"Answer an instance of myself, initialized from the contents of xml."
	
	^(self new)
		initializeFromXML: xml