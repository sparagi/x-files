ip
testParseIP4
	"IPv6: not legal!  It turns into a regName."

	| uri uriString |
	uriString _ 'scheme://fe80::240:5ff:fea0:8e0/'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri authority name = 'fe80::240:5ff:fea0:8e0']



