initialization
initialize
	"Set my initial state."
	
	super initialize.
	contents ifNil: [contents := Dictionary new]