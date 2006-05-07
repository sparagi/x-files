accessing
initializeFrom: aURIStream
	"Parse my instance variables from aURIStream."
	"I assume the authority begins at the current position of aURIStream.  If I was successful, I leave aURIStream's position at the end of the authority. It may be that aURIStream is not at its end then. If I was unsuccessful, I put aURIStream's position back where I found it and answer nil."

	| originalPosition nextCharacter |

	originalPosition _ aURIStream position.

	"Scan for userinfo."
	userinfo _ aURIStream nextWhileIn: #userinfo.	
	(aURIStream peekFor: $@) ifFalse: [
		"There isn't any userinfo."
		userinfo _ nil.
		aURIStream position: originalPosition].

	"Scan for host."
	host _ HostIdentifier from: aURIStream.

	"Scan for port."
	host ifNotNil: [
		(aURIStream peekFor: $:) ifTrue: [
			"The next thing should be a port."
			port _ aURIStream nextWhileIn: #digit.
			port _ (
				(port isEmpty)
					ifTrue: [-1]
					ifFalse: [port asNumber])]].

	nextCharacter _ aURIStream peek.
	((nextCharacter isNil or: [nextCharacter = $/]) or: [nextCharacter = $?]) ifFalse: [
		aURIStream position: originalPosition.
		^nil]