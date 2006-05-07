scheme
testParseScheme4
	"A scheme cannot begin with a digit."

	self should: [URI fromString: '5cheme://host/']
		raise: IllegalURIException


