instance creation
withUri: aURI
	"Answer a new or existing instance of me, with the given URI."

	| newInstance |
	aURI asString = ''
		ifTrue: [
			newInstance := self new]
		ifFalse: [
			newInstance := Instances at: aURI ifAbsentPut: [self new].
			newInstance uri: aURI].
	newInstance initializeGlobalPartitions.
	^newInstance