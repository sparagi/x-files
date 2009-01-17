raising errors
escapeHandlers: proposedHandlers areCompatibleWith: proposedCharacters
	"Answer whether the proposed CharacterEscapeHandlers are compatible with the proposed Characters."
	
	| escapeMarkers escapeCharacters |

	proposedHandlers ifNil: [
		"Characters can't be incompatible with themselves and nil handlers are compatible with anything."
		^true].
	escapeMarkers := (Array newFrom: proposedHandlers) collect: [:h | h beginning].
	escapeMarkers size = escapeMarkers asSet size ifFalse: [
		^self escapeHandlerOverlapError].
	proposedCharacters ifNil: [
		"Handlers are internally consistent and compatible with nil characters."
		^true].
	escapeCharacters := (escapeMarkers collect: [:marker | marker first]) asSet.
 	(proposedCharacters includesAnyOf: escapeCharacters) ifTrue: [
		^self characterAmbiguityError].
	^true
