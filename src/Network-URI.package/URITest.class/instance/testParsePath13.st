path
testParsePath13
	"Exciting characters in a path."

	| uri uriString |
	uriString _ 'scheme:/path/S;upe:r@c&a=l+i$,f-r_a.g!i~l*i''s(t)i3c%20expialidocious'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self should: [uri path size = 3].