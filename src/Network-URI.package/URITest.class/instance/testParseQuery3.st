query
testParseQuery3
	"An opaque URI cannot have a query, because the opaque part includes any $?s."

	| uri uriString |
	uriString _ 'scheme:opaque?query'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self should: [uri isOpaque].
