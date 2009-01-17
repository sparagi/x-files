debugging
error: message
	"Signal an IllegalURIException."
	
	^IllegalURIException signal: message with: self
