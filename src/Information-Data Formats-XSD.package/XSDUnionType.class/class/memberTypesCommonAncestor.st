accessing
memberTypesCommonAncestor
	"Answer the first common ancestor of my member types, or nil if it is the ur type."

	| commonAncestry |
	
	commonAncestry := nil.
	memberTypes do: [:memberType |
		commonAncestry
			ifNil: [ commonAncestry := memberType allSuperclasses]
			ifNotNil: [ 
				commonAncestry := commonAncestry collect: [:ancestor |
					memberType inheritsFrom: ancestor]]].
	^({XSDList. XSDUnionType. XSDAtomicType} includes: commonAncestry first)
		ifTrue: [ nil ]
		ifFalse: [ commonAncestry first ]
