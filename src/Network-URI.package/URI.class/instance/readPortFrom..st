initialization
readPortFrom: escapingStream
	"Parse my port from escapingStream."
	| portString |
	
	(escapingStream peekFor: $:) ifTrue: [
		portString := escapingStream nextWhileIn: #DIGIT.
		port := ((portString isEmpty)
					ifTrue: [nil]
					ifFalse: [portString asNumber])]
