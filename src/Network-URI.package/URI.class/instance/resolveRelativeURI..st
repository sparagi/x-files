converting
resolveRelativeURI: aURI
	"Resolve aURI, which should be relative, in relation to myself."
	"Incompatible with Michael Rueger's resolveRelativeURI:, which accepts Strings in addition to URI."
	"This algorithm is derived from the one in RFC 2396, section 5.2. It assumes both URIs have already been parsed.

	1) If aURI is an absolute reference, it is (according to the RFC anyway) already resolved; answer it. 

	2) If aURI's path component is empty and the scheme, authority, and query components are undefined, then it is a reference to the current document; answer it.

	3) Use aURI's query and fragment.

	4) Use my scheme.

	5) If aURI's authority component is defined, use it. Otherwise, use my own.

	6) If the first segment in aURI's path is '', or aURI's authority component is defined, aURI contains an absolute path, so use aURI's path verbatim. Otherwise, merge my path with aURI's as follows:

		a) Copy all but the last segment of my path to a new collection (hereafter 'the buffer').

		b) Append aURI's path to the buffer. If the buffer is non-empty, but begins with something other than '', prepend '' so we will have a leading slash. If aURI's path is empty, but my path is not, put a '' at the end of the buffer so we don't lose the slash that was there before we removed the last segment.

		c) Remove all occurrences of '.' from the buffer.

		d) Scanning from the left, find the first occurrence of '..'. If the previous segment is '', stop processing (to comply with the examples in appendix C; section 5.2 step 6 (g) indicates raising an error would be an appropriate alternative). If '..' was the last segment, append ''. Remove both '..' and the previous segment. Repeat (d) until there are no more occurrences of '..'."

	|
		absoluteSegments
		dotIndex
		dotDotIndex
		relativeSegments
		resultAuthority
		resultFragment
		resultQuery
		resultScheme
		resultSegments
	|
	
	self needsWork.

	"step 1"
	(aURI isAbsolute) ifTrue: [^aURI].

	absoluteSegments _ path.

	"step 2"
	relativeSegments _ aURI path.

	"We already know scheme isNil, because if there were a scheme, aURI would have been absolute and we would have returned already."
	(
		(relativeSegments isEmpty)
			and: [aURI authority isNil]
			and: [aURI query isNil]
	)
		ifTrue: [^aURI].

	"From section 5."
	(self isOpaque) ifTrue: [self error: 'only hierarchical URIs can resolve relative URIs'].

	"step 3"
	resultQuery _ aURI query.
	resultFragment _ aURI fragment.

	"step 4"
	resultScheme _ scheme.

	"step 5"
	resultAuthority _ aURI authority.
	resultAuthority
		ifNotNil: [
			"step 6"
			resultSegments _ relativeSegments]
		ifNil: [
			"step 5"
			resultAuthority _ authority.

			"step 6"
			((relativeSegments isEmpty not) and: [relativeSegments first = '']) 
				ifTrue: [resultSegments _ relativeSegments]
				ifFalse: [
					"step 6a"
					resultSegments _ absoluteSegments allButLast.

					"step 6b"
					relativeSegments ifNotNil: [resultSegments addAll: relativeSegments].
					((resultSegments isEmpty not) and: [(resultSegments first = '') not]) ifTrue: [resultSegments addAllFirst: #('')].
					((relativeSegments isEmpty) and: [absoluteSegments isEmpty not]) ifTrue: [resultSegments addAll: #('')].

					"step 6c"
					dotIndex _ resultSegments indexOf: '.'.	
					[dotIndex = 0] whileFalse: [
						"Preserve the trailing slash, if necessary."
						(resultSegments size = dotIndex) ifTrue: [resultSegments addAll: #('')].

						resultSegments removeAt: dotIndex.
						dotIndex _ resultSegments indexOf: '.'].

					"step 6d"
					dotDotIndex _ resultSegments indexOf: '..'.	
					[dotDotIndex = 0] whileFalse: [
						(dotDotIndex = 2)
							ifTrue: [
								"Don't remove leading slash."
								dotDotIndex _ 0]
							ifFalse: [
								"Preserve the trailing slash, if necessary."
								(resultSegments size = dotDotIndex) ifTrue: [resultSegments addAll: #('')].

								resultSegments
									removeAt: dotDotIndex;
									removeAt: (dotDotIndex - 1).

								dotDotIndex _ resultSegments indexOf: '..' ]]]].

	^(self class new)
		scheme: resultScheme 
		authority: resultAuthority 
		path: resultSegments 
		query: resultQuery
		fragment: resultFragment