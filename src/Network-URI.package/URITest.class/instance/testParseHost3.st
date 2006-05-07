host
testParseHost3
	"No escaped characters can appear in a host name; they turn it into a regName."

	| uri uriString |
	uriString _ 'scheme://h%6Fst/'.
	uri _ URI fromString: uriString.
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri authority name = 'host']


