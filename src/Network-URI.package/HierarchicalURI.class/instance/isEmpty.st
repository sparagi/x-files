testing
isEmpty
	"Answer whether I contain anything important (according to my scheme)."

	^(path isNil) and: [authority isNil]