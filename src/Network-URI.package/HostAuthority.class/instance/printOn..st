streaming
printOn: aStream
	"Print the encoded version of myself on aStream."

	| encodingStream |

	encodingStream _ CharacterClassStream on: aStream with: self class characterClasses.

	userinfo ifNotNil: [
		encodingStream
			nextPutAll: userinfo
			as: 'userinfo';
			nextPut: $@].
	host ifNotNil: [host printOn: encodingStream].
	port ifNotNil: [ 
		encodingStream nextPut: $:. 
		(port < 0) ifFalse: [encodingStream nextPutAll: port asString]]