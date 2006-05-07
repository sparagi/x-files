initialization
initializeFrom: aURIStream
	"Parse my instance variables from aURIStream."
	"If I was successful, I leave aURIStream's position at the end of the host identifier. It may be that aURIStream is not at its end then. If I was unsuccessful, I put aURIStream's position back where I found it and answer nil."

	| segmentInProgress |

	segmentInProgress _ aURIStream nextWhileIn: #domainlabel.

	nameSegments _ OrderedCollection new.

	[aURIStream peekFor: $.] whileTrue: [
		segmentInProgress isEmpty ifTrue: [self error: 'empty domainlabel'].
		(segmentInProgress first = $-) ifTrue: [self error: '$- at the beginning of a domainlabel'].
		(segmentInProgress last = $-) ifTrue: [self error: '$- at the end of a domainlabel'].
		nameSegments add: segmentInProgress.
		segmentInProgress _ aURIStream nextWhileIn: #domainlabel].

	segmentInProgress isEmpty
		ifTrue: [
			nameSegments isEmpty ifFalse: [
				segmentInProgress _ nameSegments last.
				segmentInProgress first isDigit ifTrue: [self error: 'digit at the beginning of toplabel'].
				nameSegments add: '']]
		ifFalse: [
			(segmentInProgress first = $-) ifTrue: [self error: '$- at the beginning of a domainlabel'].
			(segmentInProgress last = $-) ifTrue: [self error: '- at the end of a domainlabel'].
			segmentInProgress first isDigit ifTrue: [self error: 'digit at the beginning of toplabel'].
			nameSegments add: segmentInProgress]