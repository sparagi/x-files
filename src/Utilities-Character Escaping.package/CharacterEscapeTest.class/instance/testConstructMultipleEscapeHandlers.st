test character class definition
testConstructMultipleEscapeHandlers
	"Construct multiple valid escape handlers."
	| escaped |

	escaped := 
		CharacterClass constructEscapeHandlers: (Array 
			with: (CharacterEscapeHandler html)
			with: (CharacterEscapeHandler uri)).