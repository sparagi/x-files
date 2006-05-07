instantiation
on: aStream with: characterClassDictionary
	"Answer a new instance of myself on aStream, using the character classes in characterClassDictionary."

	^(self new)
		stream: aStream;
		characterClasses: characterClassDictionary;
		self