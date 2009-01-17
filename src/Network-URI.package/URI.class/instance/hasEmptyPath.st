testing
hasEmptyPath
	"Answer whether my path exists, but is empty."
	
	^path size = 1 and: [path only isEmpty]