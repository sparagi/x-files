streaming
nextTrimmedBlanksUpTo: delimiter
	| resultStream nextChar |
	resultStream _ WriteStream on: (String new: 10).
	nextChar _ nil.
	[(nextChar _ self next) == delimiter]
		whileFalse: [
			nextChar == $  ifFalse: [
				resultStream nextPut: nextChar]].
	nextChar == delimiter
		ifFalse: [self parseError: 'XML no delimiting ' , delimiter printString , ' found'].
	^resultStream contents
