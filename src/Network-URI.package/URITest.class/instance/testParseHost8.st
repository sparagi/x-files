host
testParseHost8
	"No - at the beginning."

	self should: [URI fromString: 'scheme://-ost/']
		raise: IllegalURIException.


