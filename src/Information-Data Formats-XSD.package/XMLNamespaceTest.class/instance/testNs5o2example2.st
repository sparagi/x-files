non-normative examples
testNs5o2example2
	"Example 2 from Namespaces in XML section 5.2. Namespace Defaulting."
	
	| doc title book number bkUri isbnUri |
	doc := XMLDocument fromString: '<?xml version="1.0"?>
<!-- unprefixed element types are from "books" -->
<book xmlns=''urn:loc.gov:books''
      xmlns:isbn=''urn:ISBN:0-395-36341-6''>
    <title>Cheaper by the Dozen</title>
    <isbn:number>1568491379</isbn:number>
</book>'.
	book := doc elementAt: 'book'.
	title := book elementAt: 'title'.
	number := book elementAt: 'isbn:number'.
	bkUri := URI fromString: 'urn:loc.gov:books'.
	isbnUri := URI fromString: 'urn:ISBN:0-395-36341-6'.
	self should: [(book namespaceAt: 'isbn') uri = isbnUri].
	self should: [book namespace uri = bkUri].
	self should: [title namespace uri = bkUri].
	self should: [number namespace uri = isbnUri].