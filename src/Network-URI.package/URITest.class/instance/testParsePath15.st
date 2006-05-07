path
testParsePath15
	"No bogus characters."

	self should: [URI fromString: 'scheme:/path/to/err|or']
		raise: IllegalURIException


