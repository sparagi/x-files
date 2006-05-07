userinfo
testParseUserinfo4
	"Illegal escaped characters in the userinfo."

	self should: [URI fromString: 'scheme://user%info@host/']
		raise: Error.