non-normative examples
testNs5o2example3
	"Example 3 from Namespaces in XML section 5.2. Namespace Defaulting."
	
	| doc bkUri notes p i htmlUri |
	doc := XMLDocument fromString: '<?xml version="1.0"?>
<!-- initially, the default namespace is "books" -->
<book xmlns=''urn:loc.gov:books''
      xmlns:isbn=''urn:ISBN:0-395-36341-6''>
    <title>Cheaper by the Dozen</title>
    <isbn:number>1568491379</isbn:number>
    <notes>
      <!-- make HTML the default namespace for some commentary -->
      <p xmlns=''urn:w3-org-ns:HTML''>
          This is a <i>funny</i> book!
      </p>
    </notes>
</book>'.
	notes := (doc elementAt: 'book') elementAt: 'notes'.
	p := notes elementAt: 'p'.
	i := p elementAt: 'i'.
	bkUri := URI fromString: 'urn:loc.gov:books'.
	htmlUri := URI fromString: 'urn:w3-org-ns:HTML'.
	self should: [notes namespace uri = bkUri].
	self should: [p namespace uri = htmlUri].
	self should: [i namespace uri = htmlUri].