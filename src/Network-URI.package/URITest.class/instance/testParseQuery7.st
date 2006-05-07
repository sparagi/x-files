query
testParseQuery7
	"Query with many exciting characters."

	| uri uriString |
	uriString _ 'scheme:/path/to/resource?S;u/p?e:r@c&a=l+i$,f-r_a.g!i~l*i''s(t)i1c%20expialidocious'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri query = 'S;u/p?e:r@c&a=l+i$,f-r_a.g!i~l*i''s(t)i1c expialidocious'].

