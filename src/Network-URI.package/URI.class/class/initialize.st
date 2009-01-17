initialization
initialize
	"Initialize my registry of classes that represent URIs of particular schemes."
	"self initialize"

	super initialize.
	ClassByScheme := Dictionary new.
	DefaultPortByScheme := Dictionary new.