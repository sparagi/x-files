path
testParsePath12
	"A path segment may not begin with a parameter."

	self should: [URI fromString: 'scheme:/path/to/resource/;error']
		raise: IllegalURIException


