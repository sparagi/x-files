initialization
initializeFrom: aURIStream
	"Parse my instance variables from aURIStream."
	"I assume the authority begins at the current position of aURIStream.  If I was successful, I leave aURIStream's position at the end of the authority. It may be that aURIStream is not at its end then. If I was unsuccessful, I put aURIStream's position back where I found it and answer nil."

	| originalPosition nextCharacter |

	originalPosition _ aURIStream position.

	name _ aURIStream nextWhileIn: #regName.	
	name ifNil: [
		aURIStream position: originalPosition.
		^nil].

	nextCharacter _ aURIStream peek.
	^((nextCharacter isNil or: [nextCharacter = $/]) or: [nextCharacter = $?]) 
		ifTrue: [
			"We found a regName & it is good."
			self]
		ifFalse: [
			aURIStream position: originalPosition.
			nil]