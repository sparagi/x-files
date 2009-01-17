initialization
readFragmentFrom: escapingStream
	"Attempt to parse a fragment from escapingStream (conforms to URIStream).  If successful, 
	leave the position of escapingStream after the fragment.  If unsuccessful, leave the position
	of escapingStream where it began."

	(escapingStream peekFor: $#) ifTrue: [fragment := escapingStream nextWhileIn: #fragment]