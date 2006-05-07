opaque
testParseOpaque3
	"Those characters haven't really escaped, they're still in the village."

	self should: [URI fromString: 'scheme:opa%que']
		raise: Error


