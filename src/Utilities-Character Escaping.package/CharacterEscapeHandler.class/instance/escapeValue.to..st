escaping
escapeValue: aCharacter to: aStream
	"Write only the escaped value of aCharacter to aStream.  Except for testing, I should only be sent from inside this class & its subclasses.  Outside callers are probably looking for escape:to: or the like."

	self subclassResponsibility