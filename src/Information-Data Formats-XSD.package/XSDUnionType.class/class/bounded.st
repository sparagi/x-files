fundamental facets
bounded
	"Answer whether my instances are bounded."
	
	| allTrue |
	
	allTrue _ true.
	memberTypes do: [:memberType |
		(memberType bounded = true)
			ifFalse: [ allTrue := false ]].
	^allTrue and: [self memberTypesCommonAncestor notNil]
	