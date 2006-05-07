scheme
testParseScheme7
	"Digits and + and - and . are allowed.  All characters in the scheme are lowercased."

	| uri uriString |
	uriString _ 's-c+h.e1mE://host/'.
	uri _ URI fromString: uriString.
	self shouldnt: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri scheme = 's-c+h.e1mE'].

