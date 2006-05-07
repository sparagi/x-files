streaming
printOn: aStream
	"Print the encoded version of myself on aStream."

	| encodingStream |

	encodingStream _ CharacterClassStream on: aStream with: self class characterClasses.

	name ifNotNil: [encodingStream nextPutAll: name as: 'regName']