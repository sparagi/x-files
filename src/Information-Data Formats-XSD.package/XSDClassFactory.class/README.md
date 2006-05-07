My instances create classes based on an XML schema, as defined in the second edition (dated October 28, 2004) of the W3C Recommendations for XML Schema.  Instances of the resulting XSDDocument subclass, and its cohorts, can:

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

At last count, the XML Schema specifications were available here:

http://www.w3.org/TR/2004/REC-xmlschema-0-20041028/
http://www.w3.org/TR/2004/REC-xmlschema-1-20041028/
http://www.w3.org/TR/2004/REC-xmlschema-2-20041028/

For license see https://github.com/sparagi/x-files/blob/master/LICENSE.
