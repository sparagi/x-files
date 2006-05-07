scheme
testParseScheme8
	"No @ in a scheme."

	self should: [URI fromString: 'sch@eme://host/']
		raise: IllegalURIException.


