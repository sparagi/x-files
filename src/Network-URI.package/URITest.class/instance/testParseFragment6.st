fragment
testParseFragment6
	"No $# in a fragment."

	self should: [URI fromString: 'scheme:opaque#frag#ment']
		raise: IllegalURIException.


