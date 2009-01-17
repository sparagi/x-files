instantiation
from: aStream
	"Answer a new instance of myself, parsed from aStream (conforms to Stream).
	Parsing begins at the current position of aStream, and may end before the end of aStream."

	^self from: aStream untilEnd: false