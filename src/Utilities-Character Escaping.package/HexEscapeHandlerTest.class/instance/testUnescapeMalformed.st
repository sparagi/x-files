testing
testUnescapeMalformed
	"Attempt to unescape some malformed characters."

	| escape |
	escape := HexEscapeHandler beginningWith: '%'.
	{'%0'. '%ag'. '%A'. '%A B'} do: [:string |
		self should: [escape unescape: string] raise: InvalidCharacterEscape].
	
	escape := HexEscapeHandler beginningWith: '%%'.
	{'%0A'. '%%0'. '%%ag'. '%%A'. '%%A B'. ' %0A'. '% %AA'} do: [:string |
		self should: [escape unescape: string] raise: InvalidCharacterEscape].
	
	escape := HexEscapeHandler beginningWith: '#' endingWith: '#'.
	{'#0A'. '#0#'. '#ag#'. '#A#'. '#A B#'. ' # 0A#'. '#0A #'} do: [:string |
		self should: [escape unescape: string] raise: InvalidCharacterEscape]