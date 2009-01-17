Each of my instances defines a class of characters.  This is useful for parsing and writing data in formats defined by EBNF. 

Instance Variables

-	characters		an IdentitySet of characters which are valid in the context this instance represents
-	escapeHandlers	a PluggableSet of CharacterEscapeHandlers configured to handle escapes in the context this instance represents

Inconsistent configuration of a character class will signal InvalidCharacterEscape.

For license see https://github.com/sparagi/x-files/blob/master/LICENSE.
