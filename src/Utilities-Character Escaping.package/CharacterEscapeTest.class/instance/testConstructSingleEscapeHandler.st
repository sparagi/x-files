test character class definition
testConstructSingleEscapeHandler
	"Construct a single valid escape handler."
	| escaped |

	escaped := 
		CharacterClassDefinition constructEscapeHandlers: (Array with: 
			(HexEscapeHandler beginningWith: '%')).