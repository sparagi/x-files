accessing
value: newValue
	"Set my value.  Signal TypeError if newValue is not a valid value for my type."

	self subclassResponsibility