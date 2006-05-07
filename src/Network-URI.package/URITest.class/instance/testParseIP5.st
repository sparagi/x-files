ip
testParseIP5
	"Hex characters: not legal in an IP address!"

	self should: [URI fromString: 'scheme://222.173.be.239/']
		raise: IllegalURIException


