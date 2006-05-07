initialization
initializeFrom: aURIStream
	"Parse my instance variables from aURIStream."
	"I assume the path begins at the current position of aURIStream.  If I was successful, I leave aURIStream's position at the end of the path. It may be that aURIStream is not at its end then."

	| segmentInProgress |

	segmentInProgress _ aURIStream nextWhileIn: #relSegment.
	[aURIStream peekFor: $/] whileTrue: [
		self add: segmentInProgress.
		(aURIStream peekFor: $;) ifTrue: [self error: 'invalid path component'].
		segmentInProgress _ aURIStream nextWhileIn: #segment].

	self isEmpty
		ifTrue: [
			(segmentInProgress = '')
				ifTrue: [^nil]
				ifFalse: [self add: segmentInProgress]]
		ifFalse: [self add: segmentInProgress]