equivalence
testURIEquality
	
	| uri ns1 ns2 |
	uri := URI fromString: 'http://ecommerce.org/schema'.
	ns1 :=  XMLNamespace withUri: uri.
	ns2 :=  XMLNamespace withUri: uri.

	self should: [ns1 == ns2]
