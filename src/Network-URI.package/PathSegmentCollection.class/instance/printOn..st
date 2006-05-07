streaming
printOn: aStream
	"Print the encoded version of myself on aStream."

	| stream encodingStream |

	encodingStream _ CharacterClassStream on: aStream with: self class characterClasses.

	self isEmpty ifFalse: [
		stream _ self stream.

		"Make sure there isn't a dangling delimiter at the end."
		encodingStream nextPutAll: (stream next stringRepresentation) as: 'relSegment'.

		"Print the delimiter and the next element"
		[stream atEnd] whileFalse: [
			encodingStream nextPut: $/.
			encodingStream nextPutAll: (stream next stringRepresentation) as: 'segment']]