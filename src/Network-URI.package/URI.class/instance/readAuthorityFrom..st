initialization
readAuthorityFrom: escapingStream
	"Attempt to parse an authority from escapingStream (conforms to URIStream).  If successful, 
	leave the position of escapingStream after the authority.  If unsuccessful, leave the position
	of escapingStream where it began."
	| originalPosition |
	
	originalPosition := escapingStream position.
	((escapingStream peekFor: $/) and: [escapingStream peekFor: $/])
		ifTrue: [ | positionAfterDoubleSlash nextCharacter |
			positionAfterDoubleSlash := escapingStream position.
				
			self readUserinfoFrom: escapingStream.
			self readHostFrom: escapingStream.
			self readPortFrom: escapingStream.
				
			nextCharacter := escapingStream peek.
			((nextCharacter isNil or: [nextCharacter = $/]) or: [nextCharacter = $?]) ifFalse: [
				escapingStream position: positionAfterDoubleSlash].
			self needsWork.  "Should this be an error?"]
		ifFalse: [escapingStream position: originalPosition].
