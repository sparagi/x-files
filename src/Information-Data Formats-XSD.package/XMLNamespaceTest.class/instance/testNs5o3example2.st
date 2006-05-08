non-normative examples
testNs5o3example2
	"Example 2 from Namespaces in XML section 5.3. Uniqueness of Attributes."
	
	| doc x nsUri |
	doc := XMLDocument fromString: '<!-- http://www.w3.org is bound to n1 and is the default -->
<x xmlns:n1="http://www.w3.org" 
   xmlns="http://www.w3.org" >
  <good a="1"     b="2" />
  <good a="1"     n1:a="2" />
</x>'.
	x:= doc elementAt: 'x'.
	nsUri := URI fromString: 'http://www.w3.org'.
	self should: [x namespace uri = nsUri].
	self should: [(x namespaceAt: 'n1') uri = nsUri].