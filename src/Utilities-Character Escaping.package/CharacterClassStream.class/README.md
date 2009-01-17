I am a wrapper class for any stream class.  My instances understand character classes as configured by my instantiator.  This is useful for parsing and writing data in formats defined by EBNF. 

After configuration, be sure to use the correct variant of peek, next, nextPut: or skip, depending on what escaping behavior you would like:

literal contents		sender reads, writes and counts the same characters the stream does 
parsed contents		sender reads the same characters the stream does, but counts an escape sequence as a single character
unescaped contents	sender reads, writes and counts unescaped characters; the stream reads and writes escape sequences as needed

If you have not configured any escapeHandlers, my instance will give the same answer to several of these variants.

SECURITY NOTE
Correct use of this class will thwart injection attacks (e.g. cross site scripting and response splitting) against well-formed stream formats.  In an injection attack, the attacker "injects" (inserts) the delimiters between data and control information into the data portion of a mixed stream of data and control information.  The system being attacked interprets the data following the delimiter as control information and does what the attacker instructed.  A well-formed data format or protocol defines which characters are allowed in the data portion of the stream, and does not allow these delimiters in the data.  Most such protocols provide a way to escape invalid characters that appear in the data portion of the stream.  If the programmer never writes invalid characters into the data, and instead escapes them when possible, the attacker's delimiters will be dropped or escaped and there will be no way for the attacker to jump from the data stream to the control stream. 

How to use this class to thwart injection attacks:
- Write classes to represent the same information that is in the protocol. 
- Have these classes convert to and from the string representation.  During the conversion,
  - Configure an instance of this class with character classes, including escape handlers, to match your protocol or format specification.
  - Use only the "unescaped contents" methods to read or write anything somebody other than you could conceivably control. 
  - Parse using the finest grained character classes defined by the specification.
  - Don't concatenate strings parsed using multiple character classes, or the same character class at two points in the stream.
  - When writing out the string representation of an object, don't make assumptions about the types being stored in the object's variables.  Just ask whatever it is for itself as a string.
  - Don't ignore InvalidCharacterEscape or EndOfValidCharacters exceptions.  If you get one of these, either your parser has a bug or the string you are parsing is invalid and may be an attack.  Either fail closed or escalate the failure.
- Don't write any other code to convert to or from [any subset of] the string representation.  Also, warn your users not to do this.
- Convert from string representations to objects as soon as possible, and from objects to string representatons as late as possible. 

For an example of safe usage of this class, see Brenda Larcom's URI implementation in Network-URI.


Instance Variables

-	stream				the wrapped Stream
-	characterClasses		a Dictionary whose keys are symbols indicating character class names, and whose values contain CharacterClassess
-	multipeekCapable	whether stream responds to peek:

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
