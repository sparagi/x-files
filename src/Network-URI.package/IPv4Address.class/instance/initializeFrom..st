initialization
initializeFrom: aURIStream
	"Parse my instance variables from aURIStream."
	"If I was successful, I leave aURIStream's position at the end of the address. It may be that aURIStream is not at its end then. If I was unsuccessful, I put aURIStream's position back where I found it and answer nil."

	| oldPosition |

	oldPosition _ aURIStream position.

	address _ ByteArray new: 4.
	1
		to: 4
		do: [:index |
			| digits |

			digits _ aURIStream nextWhileIn: #digit.
			digits isEmpty
				ifTrue: [
					aURIStream position: oldPosition.
					^nil]
				ifFalse: [
					address
						at: index
						put: digits asNumber.
					((index < 4) and: [(aURIStream peekFor: $.) not]) ifTrue: [
						aURIStream position: oldPosition.
						^nil]]]