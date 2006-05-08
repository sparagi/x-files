non-normative examples
testNs5o3example1o2
	"Second part of example 1 from Namespaces in XML section 5.3. Uniqueness of Attributes."
	
	self 
		should: [XMLDocument fromString: '<!-- http://www.w3.org is bound to n1 and n2 -->
<x xmlns:n1="http://www.w3.org" 
   xmlns:n2="http://www.w3.org" >
  <!-- bad a="1"     a="2" / -->
  <bad n1:a="1"  n2:a="2" />
</x>']
		raise: XMLParseError
		whoseDescriptionIncludes: 'attribute uniqueness'
		description: 'Identical attributes forbidden'.