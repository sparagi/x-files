fragment
testParseFragment9
	"Lots of exciting characters."

	| uri uriString |
	uriString _ 'scheme:S;up?e:r@c&a=l+i$,f-r_a.g!i~l*i''s(t)i1c%20expialidocious#S;u/p?e:r@c&a=l+i$,f-r_a.g!i~l*i''s(t)i3c%20expialidocious'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self should: [uri isOpaque].
	self should: [uri fragment = 'S;u/p?e:r@c&a=l+i$,f-r_a.g!i~l*i''s(t)i3c expialidocious'].