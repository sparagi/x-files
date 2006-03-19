processing
processElements
	"You probably mean to send invoke, not processElements."

	self createSubclassOf: XSDDocument namedNear: 'Document'.
	"Process every element of the top element in schema."
	self processSequence: schema topElement.
	classStack removeLast.
