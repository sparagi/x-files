userinfo
testParseUserinfo3
	"Funky characters in the userinfo."

	| uri uriString |
	uriString _ 'scheme://;u:s&e=r%201+n$f,o-_.!~*''()@host/'.
	uri _ URI fromString: uriString.
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri authority userinfo = ';u:s&e=r 1+n$f,o-_.!~*''()'].

