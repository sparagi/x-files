examples
test3986Equivalence1
	"From section 6.2.2."
	| uriStringA uriStringB uriObjectA uriObjectB |

	uriStringA := 'example://a/b/c/%7Bfoo%7D'.
	uriStringB := 'eXAMPLE://a/./b/../b/%63/%7bfoo%7d'.
	uriObjectA := URI fromString: uriStringA.
	uriObjectB := URI fromString: uriStringB.

	self should: [uriObjectA = uriObjectB].
