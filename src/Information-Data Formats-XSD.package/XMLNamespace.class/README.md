My instances represent namespaces for use with XML, as specified by the W3C Recommendation "Namespaces in XML" (http://www.w3.org/TR/1999/REC-xml-names-19990114/).  I should be upgraded to the 1.1 Spec.

Instance variables:
uri				a URI
elementType	a class
	Together, uri and elementType uniquely identify this namespace.  uri and elementType can both be nil, in which case the namespace is effectively unidentifiable.  This is not recommended.
contents		a Dictionary whose keys are #allElements, #globalAttributes, and #perElementAttributes, and whose values are Dictionaries containing name to class mappings
	All instances of me with the same value for uri (except nil) are required to have the same Dictionaries for #allElements and #globalAttributes.
	
For license see https://github.com/sparagi/x-files/blob/master/LICENSE.
