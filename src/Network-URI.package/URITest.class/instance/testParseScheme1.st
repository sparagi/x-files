scheme
testParseScheme1
	"There must be something more than the scheme."

	self should: [URI fromString: 'scheme:']
		raise: IllegalURIException


