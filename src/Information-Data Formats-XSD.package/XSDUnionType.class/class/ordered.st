fundamental facets
ordered
	"Answer whether my instances can be ordered.  The answer can be false, #partial, or #total."

	| commonAncestor allFalse |
	
	allFalse _ true.
	memberTypes do: [:memberType |
		(memberType ordered = false)
			ifFalse: [ allFalse := false ]].
	commonAncestor := self memberTypesCommonAncestor.
	^commonAncestor
		ifNil: [
			allFalse
				ifTrue: [ false ]
				ifFalse: [ #partial ]]
		ifNotNil: [
			commonAncestor ordered ]
