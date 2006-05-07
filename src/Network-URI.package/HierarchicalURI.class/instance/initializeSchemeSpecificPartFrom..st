initialization
initializeSchemeSpecificPartFrom: aURIStream
	"Parse my instance variables from aURIStream, leaving aURIStream's position at the end of my scheme-specific part."

	| oldPosition |

	aURIStream atEnd ifFalse: [
		oldPosition _ aURIStream position.
		((aURIStream peekFor: $/) and: [aURIStream peekFor: $/])
			ifTrue: [authority _ Authority from: aURIStream]
			ifFalse: [aURIStream position: oldPosition]].

	path _ PathSegmentCollection from: aURIStream.

	"Is there a query?"
	(aURIStream peekFor: $?) ifTrue: [query _ aURIStream nextWhileIn: #uric]