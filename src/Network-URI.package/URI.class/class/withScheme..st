instantiation
withScheme: scheme
	"Answer a new instance of myself with the given scheme."
	"This message should never be sent to URI, only to its concrete subclasses."

	self shouldBeImplemented.  "Validation here in case this is called by a manual constructor"
	^self new scheme: scheme