scheme
testParseScheme6
	"Digits and + and - and . may be allowed, but not at the beginning."

	self should: [URI fromString: '+scheme://host/']
		raise: IllegalURIException


