scheme
testSchemeCase
	"Confirm that, as described in section 3.1:
		(a) the parser and setter accept upper and lowercase schemes
		(b) scheme equivalence is case-insensitive
		(c) the generator produces lowercase schemes."
	| schemes comparisonScheme |

	schemes := #('scheme' 'Scheme' 'SCHEME' 'sChEmE').
	comparisonScheme := 'scheme'.
	schemes do: [:scheme | | uriString uriObjectA uriObjectB uriObjectC |
		uriString := scheme, ':restOfURI'.
		uriObjectA := URI fromString: uriString.
		uriObjectB := URI withScheme: scheme.
		uriObjectC := URI withScheme: nil.
		uriObjectC scheme: scheme.
		self should: [uriObjectA scheme = comparisonScheme].
		self should: [uriObjectB scheme = comparisonScheme].
		self should: [uriObjectC scheme = comparisonScheme].
		self should: [uriObjectA asString beginsWith: comparisonScheme].
		self should: [uriObjectB asString beginsWith: comparisonScheme].
		self should: [uriObjectC asString beginsWith: comparisonScheme]]
