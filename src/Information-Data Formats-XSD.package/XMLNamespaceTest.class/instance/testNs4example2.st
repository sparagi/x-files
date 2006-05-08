non-normative examples
testNs4example2
	"Example 2 from Namespaces in XML section 4. Using Qualified Names."
	
	| doc taxClass |
	doc := XMLDocument fromString: '<x xmlns:edi=''http://ecommerce.org/schema''>
  <!-- the ''taxClass'' attribute''s namespace is http://ecommerce.org/schema -->
  <lineItem edi:taxClass="exempt">Baby food</lineItem>
</x>'.
	taxClass := ((doc elementAt: 'x') elementAt: 'lineItem') attributeAt: 'edi:taxClass'.
	self should: [taxClass namespace uri = URI fromString: 'http://ecommerce.org/schema']