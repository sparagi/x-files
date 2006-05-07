path
testParsePath3
	"A relative path with exciting characters."

	| uri uriString |
	uriString _ ';Super@c&a=l+i$,f-r_a.g!i~l*i''s(t)i3c%20expialidocious/ative/path'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self should: [uri path size = 3].