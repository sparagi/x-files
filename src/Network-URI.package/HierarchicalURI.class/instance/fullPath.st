backward compatibility
fullPath
	"For compatibility with the Url hierarchy."

	| encodingStream |

	encodingStream _  CharacterClassStream on: WriteStream onMediumString with: self class characterClasses.

	path ifNotNil: [path printOn: encodingStream].
	query ifNotNil: [encodingStream nextPut: $?; nextPutAll: query as: 'uric'].
	fragment ifNotNil: [
		encodingStream
			nextPut: $#;
			nextPutAll: fragment
			as: 'uric'].

	^encodingStream contents