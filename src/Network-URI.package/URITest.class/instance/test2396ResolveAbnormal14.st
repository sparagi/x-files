examples
test2396ResolveAbnormal14
	"From section C.2."
	"Automatically generated by class>>generateAbormalResolverTests; do not edit here."

	| baseURI relURI resolvedURI |

	baseURI _ URI fromString: 'http://a/b/c/d;p?q'.
	relURI _ URI fromString: 'g;x=1/./y'.
	resolvedURI _ baseURI resolveRelativeURI: relURI.

	self should: [resolvedURI asString = 'http://a/b/c/g;x=1/y']