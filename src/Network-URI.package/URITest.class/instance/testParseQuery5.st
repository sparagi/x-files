query
testParseQuery5
	"No questions about pipes, please."

	self should: [URI fromString: 'scheme:/path/to/resource?que|ry']
		raise: IllegalURIException


