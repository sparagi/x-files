accessing
scheme: newScheme 
	"Set my scheme."
	"No escaped characters can appear in a scheme, so throw an
	exception if scheme is not syntactically valid."
	| aURIStream actualScheme |
	aURIStream := CharacterClassStream on: newScheme readStream with: self class characterClasses.
	(aURIStream peekForAnyIn: #alpha)
		ifTrue: [actualScheme := aURIStream nextWhileIn: #scheme.
			aURIStream atEnd
				ifTrue: [scheme := actualScheme]
				ifFalse: [self error: 'syntactically invalid scheme']]