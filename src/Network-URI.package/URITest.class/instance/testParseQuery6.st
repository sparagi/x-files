query
testParseQuery6
	"Those characters cannot escape."

	self should: [URI fromString: 'scheme:/path/to/resource?que%ry']
		raise: Error


