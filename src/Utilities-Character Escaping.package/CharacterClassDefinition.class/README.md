The primary purpose of my instances is to store information about a particular class of characters which may be used in some context. 

Instance Variables

-	characters		an IdentitySet of characters which are valid in the context this instance represents
-	escapeHandlers	a Dictionary whose keys are the character which appears at the beginning of a valid escape sequence, and whose values are instances of CharacterEscapeHandler configured to handle escapes beginning with this character in this context

It is an InvalidCharacterEscape error for a character which appears as a key in escapeHandlers to also appear in characters.


Copyright (c) 2006 Brenda Larcom <asparagi@hhhh.org>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
