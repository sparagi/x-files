host
testParseHost5
	"Fully qualified hostname."

	| uri uriString |
	uriString _ 'scheme://host.fully.qualified./'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri authority host asString = 'host.fully.qualified.'].

