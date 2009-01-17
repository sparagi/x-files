unescaped contents
skipIn: characterClassName
	"Increment my position by one legal character or escape sequences, as defined by the given chararacter class."
	
	^self skip: 1 in: characterClassName