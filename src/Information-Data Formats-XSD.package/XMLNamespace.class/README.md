My instances represent namespaces for use with XML, as specified by the W3C Recommendation "Namespaces in XML" (http://www.w3.org/TR/1999/REC-xml-names-19990114/).  I should be upgraded to the 1.1 Spec.

Instance variables:
uri				a URI
elementType	a class
	Together, uri and elementType uniquely identify this namespace.  uri and elementType can both be nil, in which case the namespace is effectively unidentifiable.  This is not recommended.
contents		a Dictionary whose keys are #allElements, #globalAttributes, and #perElementAttributes, and whose values are Dictionaries containing name to class mappings
	All instances of me with the same value for uri (except nil) are required to have the same Dictionaries for #allElements and #globalAttributes.
	
one test idea: XMLNamespace withUri: foo should == XMLNamespace withUri: foo
(replace foo with a URI)

XMLNamespace>>perElement: needs to issue the same instance every time it is asked with the same argument

see XMLNamespace class>>withUri: for a similar idea

test needed to confirm this as well
make sure you just hand them out for nil

if elementType is changed from nil to some type at some point in the future, it should get registered with the same-uri global space

what should happen if it's already there?

initializePerElementPartition should read:

	contents at: #perElementAttributes put: Dictionary new

fix class comment: uri can't be nil, only '' (empty)

get a perElement XMLNamespace, then compare its allElements and globalAttributes to the one you got it from -- they should be ==

write atAttribute:
	(which name spaces should it look in, in what order? will require reading spec)


For license see https://github.com/sparagi/x-files/blob/master/LICENSE.
