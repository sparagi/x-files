My instances create classes based on an XML schema, as defined in the second edition (dated October 28, 2004) of the W3C Recommendations for XML Schema.  Instances of the resulting XSDDocument subclass, and its cohorts, can (or will soon be able to):

	- parse XML documents which adhere to this schema
	- determine whether an XML document adheres to this schema
	- output only XML documents which adhere to this schema

If you say this:

	xsdcf _ XSDClassFactory fromXSDFile: '/full/path/to/foo.xsd' withClassPrefix: 'Foo'.
	xsdcf invoke.
	
you will get a bunch of new classes whose names begin with Foo, in the category XML-XSD Derived-Foo, in a change set whose name begins with Foo.  One of the new classes will be named FooDocument.  When you want to read in an XML document based on this schema, say:

	document _ FooDocument fromXMLFile: '/full/path/to/foo.xml'.

Instead of having to send messages like elementAt: 'purchaseOrder' to document, you can send messages like purchaseOrder directly.

If you would like to convert data from one XML schema to another, or to or from XSDDocuments and other object types, please see the XSDType class comment for some suggested conventions.
	
Many thanks to Craig Latta for initial design help.  Don't blame him for how it turned out; he hasn't seen it yet.

Copyright (c) 2004 Brenda Larcom <asparagi@hhhh.org>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
