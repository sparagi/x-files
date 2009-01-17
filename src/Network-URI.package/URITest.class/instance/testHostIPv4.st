host
testHostIPv4
	"?"
	
	URIHostIdentifier fromString: '127.0.0.1'.
	
	"are the octets right?
	out-of-range octets
	too few octets & other legacy IPv4 representations
	too many octets
	illegal characters
	percent encoding
	2 dots in a row
	leading & trailing dots"
	self shouldBeImplemented; needsWork