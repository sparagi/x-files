non-normative examples
testNs4example1
	"Example 1 from Namespaces in XML section 4. Using Qualified Names."
	
	| doc price |
	doc := XMLDocument fromString: '<x xmlns:edi=''http://ecommerce.org/schema''>
  <!-- the ''price'' element''s namespace is http://ecommerce.org/schema -->
  <edi:price units=''Euro''>32.18</edi:price>
</x>'.
	price := (doc elementAt: 'x') elementAt: 'edi:price'.
	self should: [price namespace uri = URI fromString: 'http://ecommerce.org/schema']