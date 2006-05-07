host
testParseHost9
	"No - at the end."

	self should: [URI fromString: 'scheme://hos-/']
		raise: IllegalURIException.


