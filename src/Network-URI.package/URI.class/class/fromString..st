instantiation
fromString: aString 
	"Answer a new instance of myself, composed from the entire
	contents of aString."
	^ self
		fromURIStream: (CharacterClassStream on: aString readStream with: self characterClasses) withEntireContents: true