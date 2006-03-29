non-normative examples
ns5o1example1
	"Example: Applying Namespaces to Elements and Attributes: Namespace Scoping"
	^'<?xml version="1.0"?>
<!-- both namespace prefixes are available throughout -->
<bk:book xmlns:bk=''urn:loc.gov:books''
         xmlns:isbn=''urn:ISBN:0-395-36341-6''>
    <bk:title>Cheaper by the Dozen</bk:title>
    <isbn:number>1568491379</isbn:number>
</bk:book>'