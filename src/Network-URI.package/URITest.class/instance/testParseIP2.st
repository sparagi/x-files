ip
testParseIP2
	"No escaped characters in an IP address."

	self should: [URI fromString: 'scheme://10.%30.0.2/']
		raise: IllegalURIException


