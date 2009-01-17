scheme
testSchemeChange
	"Scheme cannot be set to a value which is incompatible with the current class."
	| uri |
	
	uri := URI fromString: 'http://www.ietf.org/rfc/rfc2396.txt'.
	
	self should: [uri scheme = 'http'].
	self shouldnt: [uri scheme: 'https'] raise: Error.
	self should: [uri scheme = 'https'].
	self should: [uri asString = 'https://www.ietf.org/rfc/rfc2396.txt' ].
	self should: [uri scheme: 'mailto'] raise: IncompatibleURIScheme.
	self should: [uri scheme = 'https'].	
