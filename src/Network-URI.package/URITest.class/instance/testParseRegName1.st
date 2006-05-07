regName
testParseRegName1
	"An absolute URL with regName but not much of a path."

	| uri uriString |
	uriString _ 'scheme://S;upe:r@c&a=l+i$,f-r_a.g!i~l*i''s(t)i1c%20expialidocious/'.
	uri _ URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self should: [uri authority name = 'S;upe:r@c&a=l+i$,f-r_a.g!i~l*i''s(t)i1c expialidocious'].
	self shouldnt: [uri isOpaque].

