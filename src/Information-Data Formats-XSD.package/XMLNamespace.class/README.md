My instances represent namespaces for use with XML, as specified by the W3C Recommendation "Namespaces in XML" (http://www.w3.org/TR/1999/REC-xml-names-19990114/).

Instance variables:
uri				a URI
elementType	a class
	Together, uri and elementType uniquely identify this namespace.  uri and elementType can both be nil, in which case the namespace is effectively unidentifiable.  This is not recommended.
contents		a Dictionary whose keys are #allElements, #globalAttributes, and #perElementAttributes, and whose values are Dictionaries containing name to class mappings
	All instances of me with the same value for uri (except nil) are required to have the same Dictionaries for #allElements and #globalAttributes.
	

Copyright (c) 2005 Brenda Larcom <asparagi@hhhh.org>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
