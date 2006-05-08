accessing
atElement: nameString
	"Answer the element specified by the given nameString."
	
	| prefix unqualifiedName xmlns |
	"split nameString on :, into prefix & unqualifiedName"
	xmlns := self atPrefix: (prefix ifNil: ['']).
	^ xmlns atElement: unqualifiedName