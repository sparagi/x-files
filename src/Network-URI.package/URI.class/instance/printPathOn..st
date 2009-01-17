streaming
printPathOn: escapingStream
	"Print the normalized version of my path on aStream, using the algorithm in RFC 3986 
	section 5.3."
	
	path ifNotNil: [ | isFirstSegment |
		isFirstSegment := true.
		path do: [:segment |
			"According to section 6.2.3, a URI that uses the generic syntax for authority with an
			empty path should be normalized to a path of '/'.  Otherwise, we should only 
			include / between path segments.".
			(isFirstSegment not or: [self hasAuthority and: [self hasEmptyPath]]) ifTrue: [
				escapingStream nextPut: $/].
			escapingStream nextPutAll: segment as: #segment.
			isFirstSegment := false]].