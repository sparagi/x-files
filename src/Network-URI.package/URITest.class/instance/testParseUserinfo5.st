userinfo
testParseUserinfo5
	"No ? in the userinfo; it turns everything into a query."

	| uri uriString |
	uriString _ 'scheme://user?info@host/'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri authority host asString = 'user']


