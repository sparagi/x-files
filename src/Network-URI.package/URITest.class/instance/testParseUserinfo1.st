userinfo
testParseUserinfo1
	"Normal userinfo."

	| uri uriString |
	uriString _ 'scheme://userinfo@host/'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri authority userinfo = 'userinfo'].

