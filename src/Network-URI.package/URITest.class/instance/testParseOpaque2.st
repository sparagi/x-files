opaque
testParseOpaque2
	"We can't slash any more!"

	self should: [URI fromString: 'scheme:opa/que']
		raise: IllegalURIException


