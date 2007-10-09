The primary purpose of my instances is to store information about a particular class of characters which may be used in some context. 

Instance Variables

-	characters		an IdentitySet of characters which are valid in the context this instance represents
-	escapeHandlers	a Dictionary whose keys are the character which appears at the beginning of a valid escape sequence, and whose values are instances of CharacterEscapeHandler configured to handle escapes beginning with this character in this context

It is an InvalidCharacterEscape error for a character which appears as a key in escapeHandlers to also appear in characters.

For license see https://github.com/sparagi/x-files/blob/master/LICENSE.
