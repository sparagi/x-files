equivalence
testAnonymousInequality
	
	| ns1 ns2 |
	ns1 :=  XMLNamespace withUri: ''.
	ns2 :=  XMLNamespace withUri: ''.

	self shouldnt: [ns1 == ns2]
