comparing
= anObject
	"Answer whether I am equivalent to anObject."

	^self class = anObject class and: [self asString = anObject asString]