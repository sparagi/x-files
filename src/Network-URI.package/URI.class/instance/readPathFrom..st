initialization
readPathFrom: escapingStream
	"Parse a path from escapingStream (conforms to URIStream).
	Assume the path begins at the current position of escapingStream, i.e. escapingStream is 
	positioned after the scheme, if any, and after the authority, if any.  If successful, leave 
	escapingStream's position at the end of the path. It may be that escapingStream is not at its 
	end then.  If unsuccessful, signal an error."
	| segmentInProgress firstSegmentCharacterClass |

	path := OrderedCollection new. 
	firstSegmentCharacterClass := scheme ifNil: [#'segment-nc'] ifNotNil: [#segment].
	
	segmentInProgress := escapingStream nextWhileIn: firstSegmentCharacterClass.
	[escapingStream peekFor: $/] whileTrue: [
		path add: segmentInProgress.
		segmentInProgress := escapingStream nextWhileIn: #segment].
	path add: segmentInProgress.
		
	self needsWork.
		
	
	