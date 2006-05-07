escaping
escape: aCharacter 
	"Answer the escaped representation of aCharacter."
	| escapedCharacter |
	escapedCharacter := WriteStream on: (String new: 3).
	self escape: aCharacter to: escapedCharacter.
	^ escapedCharacter contents