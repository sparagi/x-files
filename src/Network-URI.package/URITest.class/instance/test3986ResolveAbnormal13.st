examples
test3986ResolveAbnormal13
	"From section 5.4.2."
	"Automatically generated by class>>generateAbnormalResolverTests; do not edit here."
	| baseURI relativeURI resolvedURI |

	baseURI := URI fromString: 'http://a/b/c/d;p?q'.
	relativeURI := URI fromString: 'g;x=1/./y'.
	resolvedURI := baseURI resolve: relativeURI.

	self should: [resolvedURI asString = 'http://a/b/c/g;x=1/y']