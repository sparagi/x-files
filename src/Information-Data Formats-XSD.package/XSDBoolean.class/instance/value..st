accessing
value: newValue
	"Set my value.  Signal TypeError if newValue is not a valid value for my type."

	| valueSet |
	valueSet := false.
	(newValue=0 or: [newValue='0']) ifTrue: [
		value := 0.
		valueSet := true ].
	(newValue=false or: [newValue='false']) ifTrue: [
		value := false.
		valueSet := true ].
	(newValue=1 or: [newValue='1']) ifTrue: [
		value := 1.
		valueSet := true ].
	(newValue=true or: [newValue='true']) ifTrue: [
		value := true.
		valueSet := true ].
	valueSet ifFalse: [
		TypeError signal]