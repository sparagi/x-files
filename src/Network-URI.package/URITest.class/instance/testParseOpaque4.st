opaque
testParseOpaque4
	"Believe it or not, this much fun is really legal."

	| uri uriString |
	uriString _ 'scheme:S;up?e:r@c&a=l+i$,f-r_a.g!i~l*i''s(t)i1c%20expialidocious'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self should: [uri isOpaque].
	self should: [uri opaquePart = 'S;up?e:r@c&a=l+i$,f-r_a.g!i~l*i''s(t)i1c expialidocious'].

