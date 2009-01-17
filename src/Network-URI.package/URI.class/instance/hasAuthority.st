testing
hasAuthority
	"Answer whether I have an authority component."
	
	^host notNil or: [userinfo notNil] or: [port notNil]