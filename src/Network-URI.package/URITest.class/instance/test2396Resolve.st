examples
test2396Resolve
	"From appendix D."

	| baseURI relURI resolvedURI |

	baseURI _ URI fromString: 'http://www.ics.uci.edu/Test/a/b/c'.
	relURI _ URI fromString: '../x'.
	resolvedURI _ baseURI resolveRelativeURI: relURI.

	self should: [resolvedURI asString = 'http://www.ics.uci.edu/Test/a/x']