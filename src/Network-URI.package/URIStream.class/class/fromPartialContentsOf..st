instantiation
fromPartialContentsOf: aStream
	"Answer a new instance of myself composed from the maximum legal contents of aStream starting at its current position."

	^(self new)
		stream: aStream
		useEntireContents: false