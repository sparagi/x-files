instantiation
toInclude: characters
	"Answer a new instance of me, which will recognize the given characters and does not process any character escapes."

	^self toInclude: characters andProcess: Set new