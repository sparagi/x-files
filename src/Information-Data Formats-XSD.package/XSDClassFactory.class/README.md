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

BIG PICTURE

OK, so basically there are 5 key classes, some small classes that fit into the framework the key classes provide, & some error classes.

The 5 key classes are:

XMLNamespace
XMLNamespaceResolver
XSDClassFactory
XSDAnySimpleType
XSDComplexType

XSDClassFactory is the main entry point for when you want to understand a new XML file format.  You give the XSD to an instance of XSDClassFactory & say invoke.

When you invoke the XSDClassFactory, it groks the XSD and creates subclasses of XSDAnySimpleType and XSDComplexType according to the instructions in the XSD.

Instances of a subclass of XSDAnySimpleType or XSDComplexType can then be used to parse or write XML documents which match the original XSD.   Conversion methods should be added to the generated XSDType classes & the destination classes. 

Instances of the XMLNamespace & XMLNamespaceResolver are used by both XSDClassFactory (i.e. grokking XSDs) and the generated XSDType subclasses (i.e. grokking the corresponding XML) to deal with names that appear in XML.

A FEW MORE DETAILS

XSDClassFactory parses the XSD in one pass, in mostly textual order.  

There are basically 2 kinds of things in an XSD: type-related stuff, and naming-related stuff.  The type-related stuff is relativey straightforward.  There is a 1-1 correspondence between types defined in the XSD  & types created as XSDType subclasses.  The naming-related stuff is a green pointy thing that lurks under rocks. 

The key points about naming:
	- Every use of a type (i.e. element or attribute) has a name.
	- Not every type has a name.
	- Every name is in a namespace.
	- A namespace has different partitions for elements & attributes.
	- A name can be unqualified ('foo') or qualified ('fnord:foo').
	- If a name is qualified, the first part ('fnord') is the name of the namespace (XMLNamespace instance).
	- If a name is unqualified, it is in the default namespace for that context.
	- Namespaces have different names in different contexts (hence XMLNamespaceResolver).
	- Namespace scoping is quite complicated; this is what the namespace classes are for. 
	- Names used in an XSD can be forward references.  A lot of the code in XSDClassFactory is using the namespace classes to remember & then resolve the forward references.

XSDAnySimpleType subclasses can be used as elements or attributes.  The predefined ones that come with XSDClassFactory are from the XSD spec.  To create a new one, you essentially specify a constraint on an existing one.   Most of the code in XSDAnySimpleType is to deal with parsing & implementing these constraints.

XSDComplexType subclasses can only be used as elements.  To create a new one, you associate a bunch of names with a bunch of types.

---

What is the difference between XML documents & XML elements?
For license see https://github.com/sparagi/x-files/blob/master/LICENSE.
