I am a wrapper class for any stream class.  My instances understand character classes as configured by my instantiator.

Each correctly configured instance can:
-	peek for characters in named character classes
-	recognize valid character escape sequences
-	escape and unescape characters

My instantiator is responsible for providing CharacterClassDefinitions, including character-class-specific escapeHandlers if desired.   If you have configured one or more escapeHandlers, be sure to use the correct version of, e.g. next, depending on what answer you'd like:

next				the next character
nextEscaped		the next character, or if the next character is the beginning of an escape sequence, the next complete escape sequence
nextUnescaped	the next character, or if the next character is the beginning of an escape sequence, the character the next escape sequence represents

If you have not configured any escapeHandlers, my instance will give the same answer to all these messages.

Methods I may replace:

String>>unescapePercents
Character>>escapeEntities
String>>escapeEntities
String>>asHex
String>>asHtml
parts of String>>asUnHtml
String>>encodeForHTTP
String internet category
.. and many others

Instance Variables

-	stream					the wrapped Stream
-	characterClasses		a Dictionary whose keys are symbols indicating character class names, and whose values contain CharacterClassDefinitions


For license see https://github.com/sparagi/x-files/blob/master/LICENSE.
