test character class definition
testConstructSingleEscapeHandler
	"Construct a single valid escape handler."
	| escaped |

	escaped := 
		CharacterClass constructEscapeHandlers: (Array with: 
			(HexEscapeHandler beginningWith: '%')).