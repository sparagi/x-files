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


Copyright (c) 2006 Brenda Larcom <asparagi@hhhh.org>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


