accessing
scheme: proposedScheme 
	"Set my scheme to proposedScheme (conforms to String).
	Signal an error if scheme is not syntactically valid."

	scheme := proposedScheme 
		ifNil: [nil]
		ifNotNil: [ | uriStream validScheme |
			uriStream := URIStream on: (proposedScheme, ':') readStream.
			validScheme := self class readSchemeFrom: uriStream.
			uriStream atEnd
				ifTrue: [validScheme asLowercase]
				ifFalse: [IncompatibleURIScheme signal: 'class cannot handle new scheme' with: self.  nil]]