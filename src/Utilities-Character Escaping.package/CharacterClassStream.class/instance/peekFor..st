literal contents
peekFor: anObject
	"If my next element is literally equal to anObject, increment my position and answer true.  Otherwise, answer false and do not increment my position."

	^stream peekFor: anObject