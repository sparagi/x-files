ip
testParseIP3
	"Things that look like IP addresses but have out of range octets are legal; we deviate from RFC 2396 by not allowing them."

	self should: [URI fromString: 'scheme://256.8080.256.8080/']
		raise: Error.
