non-normative examples
testNs2example
	"Example from Namespaces in XML section 2. Declaring Namespaces."
	
	| doc x |
	doc := XMLDocument fromString: '<x xmlns:edi=''http://ecommerce.org/schema''>
  <!-- the "edi" prefix is bound to http://ecommerce.org/schema
       for the "x" element and contents -->
</x>'.
	x := doc elementAt: 'x'.
	self should: [(x namespaceAt: 'edi') uri = URI fromString: 'http://ecommerce.org/schema']