scheme
testParseScheme5
	"No escaped characters in the scheme."

	self should: [URI fromString: 'sch%65me://host/']
		raise: IllegalURIException


