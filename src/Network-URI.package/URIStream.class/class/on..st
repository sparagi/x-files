instantiation
on: aStream
	"Answer an instance of myself which reads its contents from aStream."

	^(self new)
		stream: aStream