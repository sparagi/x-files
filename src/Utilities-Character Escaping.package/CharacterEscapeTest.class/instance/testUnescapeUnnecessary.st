test hex escape handler
testUnescapeUnnecessary
	"Attempt to unescape some characters that don't need to be
	unescaped. "
	
	| escape |
	escape := HexEscapeHandler beginningWith: '%'.
	{'0'. '#'. 'fnord'. String cr}
		do: [:string | self should: [escape unescape: string] raise: InvalidCharacterEscape]