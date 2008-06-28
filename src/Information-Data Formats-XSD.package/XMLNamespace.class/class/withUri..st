instance creation
withUri: aURI
	"Answer a new or existing instance of me, with the given URI."

	| newInstance |
	aURI asString = ''
		ifTrue: [
			newInstance := self new]
		ifFalse: [
			Instances at: aURI ifPresent: [:answer | ^answer].
			newInstance := self new.
			newInstance uri: aURI].
	newInstance initializeGlobalPartitions.
	^newInstance