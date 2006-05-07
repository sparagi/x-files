instantiation
fromEntireContentsOf: aStream
	"Answer a new instance of myself composed from the entire contents of aStream."

	^(self new)
		stream: aStream
		useEntireContents: true