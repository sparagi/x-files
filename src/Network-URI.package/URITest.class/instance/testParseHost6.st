host
testParseHost6
	"A toplevel domain shouldn't begin with a digit."

	self should: [URI fromString: 'scheme://host.411/']
		raise: IllegalURIException.


