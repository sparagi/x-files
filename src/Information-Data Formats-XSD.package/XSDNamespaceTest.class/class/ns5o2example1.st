non-normative examples
ns5o2example1
	"Example: Applying Namespaces to Elements and Attributes:
	Namespace Defaulting"
	^ '<?xml version="1.0"?>
<!-- unprefixed element types are from "books" -->
<book xmlns=''urn:loc.gov:books''
      xmlns:isbn=''urn:ISBN:0-395-36341-6''>
    <title>Cheaper by the Dozen</title>
    <isbn:number>1568491379</isbn:number>
</book>'