initialization
readFrom: escapingStream
	"Parse my octets from escapingStream (conforms to URIStream).
	If successful, leave escapingStream's position at the end of the host portion.  Otherwise, 
	leave escapingStream at its current position and answer nil."
	| originalPosition |

	originalPosition := escapingStream position.
	octets := ByteArray new: 4.
	1 to: 4 do: [:index | | digits |
		digits := escapingStream nextWhileIn: #DIGIT.
		digits isEmpty
			ifTrue: [
				escapingStream position: originalPosition.
				^nil]
			ifFalse: [ | octet |
				octet := digits asNumber.
				(octet > 255 or: [digits first = $0]) ifTrue: [
					escapingStream position: originalPosition.
					^nil].
				octets at: index put: octet.
				((index < 4) and: [(escapingStream peekFor: $.) not]) ifTrue: [
					escapingStream position: originalPosition.
					^nil]]]