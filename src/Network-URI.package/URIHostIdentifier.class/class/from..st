instantiation
from: escapingStream
	"Answer a new instance of my appropriate subclass composed from the contents of 
	escapingStream."
	| answer |

	(escapingStream peekFor: $[) 
		ifTrue: [ | nextCharacter |
			nextCharacter := escapingStream peek.
			(nextCharacter = #v or: [nextCharacter = #V])
				ifTrue: [
					escapingStream next. 	"Skip the v."
					answer := URIIPvFutureAddress from: escapingStream]
				ifFalse: [answer := URIIPv6Address from: escapingStream].
			self next = #] ifFalse: [self error: 'Closing ] expected.']]
		ifFalse: [
			answer := URIIPv4Address from: escapingStream.
			answer ifNil: [answer := URIRegisteredName from: escapingStream]].
	^answer