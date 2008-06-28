From W3C Recommendation "Namespaces in XML" (http://www.w3.org/TR/1999/REC-xml-names-19990114/): 

An XML namespace is a collection of names, identified by a URI reference, which are used in XML documents as element types and attribute names.  XML namespaces differ from the "namespaces" conventionally used in computing disciplines in that the XML version has internal structure and is not, mathematically speaking, a set. 

Instance Variables

uri				a URI
elementType		a class
		
Together, uri and elementType uniquely identify this namespace.  uri can be '' or nil and elementType can be nil at the same time, in which case the namespace is effectively unidentifiable.  This is not recommended.
	
contents		a Dictionary whose keys are #allElements, #globalAttributes, and #perElementAttributes, and whose values are Dictionaries containing name to class mappings

All instances of me with the same value for uri (except '') are required to have the same Dictionaries for #allElements and #globalAttributes.

XMLNamespace>>perElement: needs to issue the same instance every time it is asked with the same argument
see XMLNamespace class>>withUri: for a similar idea

test needed to confirm this as well
make sure you just hand them out for nil

if elementType is changed from nil to some type at some point in the future, it should get registered with the same-uri global space

what should happen if it's already there?

get a perElement XMLNamespace, then compare its allElements and globalAttributes to the one you got it from -- they should be ==

write atAttribute:
	(which name spaces should it look in, in what order? will require reading spec)

I should be upgraded to the 1.1 Spec.

For license see https://github.com/sparagi/x-files/blob/master/LICENSE.
