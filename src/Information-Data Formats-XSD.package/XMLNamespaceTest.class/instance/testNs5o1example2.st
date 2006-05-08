non-normative examples
testNs5o1example2
	"Example 2 from Namespaces in XML section 5.1. Namespace Scoping."
	
	| doc title book number bkUri isbnUri |
	doc := XMLDocument fromString: '<?xml version="1.0"?>
<!-- both namespace prefixes are available throughout -->
<bk:book xmlns:bk=''urn:loc.gov:books''
         xmlns:isbn=''urn:ISBN:0-395-36341-6''>
    <bk:title>Cheaper by the Dozen</bk:title>
    <isbn:number>1568491379</isbn:number>
</bk:book>'.
	book := doc elementAt: 'bk:book'.
	title := book elementAt: 'bk:title'.
	number := book elementAt: 'isbn:number'.
	bkUri := URI fromString: 'urn:loc.gov:books'.
	isbnUri := URI fromString: 'urn:ISBN:0-395-36341-6'.
	self should: [(book namespaceAt: 'bk') uri = bkUri].
	self should: [(book namespaceAt: 'isbn') uri = isbnUri].
	self should: [book namespace uri = bkUri].
	self should: [title namespace uri = bkUri].
	self should: [number namespace uri = isbnUri].