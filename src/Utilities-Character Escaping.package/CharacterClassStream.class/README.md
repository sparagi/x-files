I am a wrapper class for any stream class.  My instances understand character classes as configured by my instantiator using CharacterClassDefinitions.  After configuration, be sure to use the correct message, depending on what escaping behavior you would like:

peek					the next character, literally
peek:					the next N characters, literally
peekFor:				whether the next character matches the given character, literally
peekForAnyIn: 			whether the next character is in the named character class

next					the next character, literally
nextIn: 					the next character in the named character class, or the character the next escape sequence represents
nextWhileIn:			the largest string of characters in the named character class from this point on, escaped
nextUnescapedIn:		the next character or complete escape sequence in the named character class, literally
nextUnescapedWhileIn:	the largest string of characters in the named character class from this point on, literally

nextPut:					the next character, literally
nextPutAll:				the next string, literally
nextPut:as:				the next character, escaped if needed for the named character class
nextPutAll:as:			the next string, escaped as needed for the named character class

If you have not configured any escapeHandlers, my instance will give the same answer to several of these messages.

Instance Variables

-	stream				the wrapped Stream
-	characterClasses		a Dictionary whose keys are symbols indicating character class names, and whose values contain CharacterClassDefinitions


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

For license see https://github.com/sparagi/x-files/blob/master/LICENSE.
