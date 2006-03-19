initialization
reset
	"Set all my internal state variables to their defaults."

	anonymousClassCounter _ 0.
	globalElements _ Dictionary new.
	globalAttributes _ Dictionary new.
	knownTypes _ Dictionary new.
	classStack _ OrderedCollection new.
	forwardReferences _ Dictionary new.
	unresolvedElements _ Dictionary new.
	unresolvedAttributes _ Dictionary new.