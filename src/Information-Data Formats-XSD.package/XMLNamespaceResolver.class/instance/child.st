instance creation
child
	"Answer a new instance of my class, with me as a parent."

	^(self class new)
		parent: self;
		yourself