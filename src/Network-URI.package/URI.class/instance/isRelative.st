testing
isRelative
	"Answer whether I am a relative URI.  All URIs which are not absolute are relative."
	
	^self isAbsolute not