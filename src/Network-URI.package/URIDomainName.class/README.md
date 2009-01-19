My instances store domain names, as specified in section 3.5 of RFC 1034 and section 2.1 of RFC 1123.  For output, IDNA encoding (see RFC 3490), rather than percent encoding, is used to maximize compatibility with legacy URI resolvers as suggested in section 3.2.2 of RFC 3986.

According to section 3.2.2 of RFC 3986, the operating system (in this case Squeak) decides what it will allow for the purpose of host identification; however, URI producers should use names that conform to the DNS syntax and are <= 255 characters long.  Therefore, I am the default implementation for RegisteredName, and my instances will not allow names that are over 255 characters when properly encoded for use in a URI.  

Instance Variables

name		an OrderedCollection of Strings representing this domain name


Copyright (c) 2009 Brenda Larcom <asparagi@hhhh.org>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

