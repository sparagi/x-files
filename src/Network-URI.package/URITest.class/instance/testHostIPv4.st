host
testHostIPv4
	"?"
	
	URI fromString: ''.
	
	
"	'http://127.0.0.1/'	Normal IPv4 address
	'http://1.2.3.4/'		Octets in correct order/correct octets
	
	'http://255.255.255.255/'	wor
	'http://256.256.256.256/'	not work
	'http://0.0.0.0/'			work
	'http://1000.1.1.1/'		not work
	'http://1.1000.1.1/'		not work
	'http://1.1.1000.1/'		not work
	'http://1.1.1.1000/'		not work		
	
	Class of Id or Exception raised
	for IPv4, what are the octets?
	
	are the octets right?
	out-of-range octets
	too few octets & other legacy IPv4 representations
	too many octets
	illegal characters
	percent encoding
	2 dots in a row
	leading & trailing dots"
	self shouldBeImplemented; needsWork