accessing
required
	"Answer whether this attribute or element is required."

	^required
		ifNil: [false]
		ifNotNil: [required]