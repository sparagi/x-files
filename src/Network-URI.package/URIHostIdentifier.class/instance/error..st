debugging
error: aString
	"Throw an IllegalURI exception."
	
	^IllegalURI signal: aString with: self
