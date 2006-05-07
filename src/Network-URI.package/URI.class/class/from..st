instantiation
from: aStream
	"Answer a new instance of myself, composed from aStream."
	"Composition begins from the current position of aStream, and may end before the end of aStream."

	^self fromURIStream: (CharacterClassStream on: aStream with: self characterClasses) withEntireContents: false