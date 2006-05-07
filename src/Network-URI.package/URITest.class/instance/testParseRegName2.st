regName
testParseRegName2
	"A relative URL with regName and a path."

	| uri uriString |
	uriString _ '//S;upe:r@c&a=l+i$,f-r_a.g!i~l*i''s(t)i1c%20expialidocious/path/to/resource'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self should: [uri authority name = 'S;upe:r@c&a=l+i$,f-r_a.g!i~l*i''s(t)i1c expialidocious'].
	self shouldnt: [uri isOpaque].

