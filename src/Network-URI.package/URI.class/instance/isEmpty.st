testing
isEmpty
	"Answer whether I contain anything important (according to my scheme)."

	self needsWork.
	^(path isNil) and: [authority isNil]