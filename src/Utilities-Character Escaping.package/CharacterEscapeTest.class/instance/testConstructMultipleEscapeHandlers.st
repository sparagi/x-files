test character class definition
testConstructMultipleEscapeHandlers
	"Construct multiple valid escape handlers."
	| escaped |

	escaped := 
		CharacterClassDefinition constructEscapeHandlers: (Array 
			with: (CharacterEscapeHandler html)
			with: (CharacterEscapeHandler uri)).