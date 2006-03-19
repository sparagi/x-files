accessing
canonicalValue
	"Answer my value, in its canonical encoding."

	^((value=1) or: [value=true])
		ifTrue: ['true']
		ifFalse: ['false']