accessing
add: aClass at: nameString in: partitionSymbol
	"Register aClass to be retrieved using nameString in the given partition."
	
	| partition |
	partition := contents at: partitionSymbol ifAbsent: [SchemaError signal: 'type defined in inappropriate namespace partition'].
	partition at: nameString put: aClass

	