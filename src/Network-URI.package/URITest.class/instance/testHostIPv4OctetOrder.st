host
testHostIPv4OctetOrder
	"Confirm that, as implied in section 3.2.2:
		(a) the octets are correct
		(b) the octets are in the correct order.
	Also confirm that:
		(c) the host is being parsed as an IPv4 address
		(d) the octets are numbers."
	| uriObject octets hostObject |
	
	uriObject := URI fromString: 'http://1.2.3.4/'.
	hostObject := uriObject host.
	octets := hostObject octets.
	self should: [hostObject isKindOf: URIIPv4Address].
	self should: [octets at: 1 = 1].
	self should: [octets at: 2 = 2].
	self should: [octets at: 3 = 3].
	self should: [octets at: 4 = 4].	
