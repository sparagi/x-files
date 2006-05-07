path
testParsePath14
	"No bogus escaped characters."

	self should: [URI fromString: 'scheme:/path/to/e%rror']
		raise: Error


