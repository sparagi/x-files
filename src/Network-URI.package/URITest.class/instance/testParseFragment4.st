fragment
testParseFragment4
	"Relative path, fragment with no query."

	| uri uriString |
	uriString _ '/path/to/resource#fragment'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri query isNil].
	self should: [uri fragment = 'fragment'].