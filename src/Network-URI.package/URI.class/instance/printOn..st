streaming
printOn: aStream
	"Print the normalized version of myself on aStream."

	| encodingStream |

	encodingStream _ CharacterClassStream on: aStream with: self class characterClasses.

	scheme ifNotNil: [
		encodingStream
			nextPutAll: scheme asLowercase;
			nextPut: $:].
	self printSchemeSpecificPartOn: encodingStream.
	fragment ifNotNil: [
		encodingStream
			nextPut: $#;
			nextPutAll: fragment
			as: 'uric']