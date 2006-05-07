scheme
testParseScheme3
	"If there's a colon, there's a scheme.  Supposed to be, anyway."

	self should: [URI fromString: '://host/']
		raise: IllegalURIException


