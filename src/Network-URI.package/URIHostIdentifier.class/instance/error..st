debugging
error: aString
	"Throw an IllegalURIException."
	
	^IllegalURIException signal: aString with: self
