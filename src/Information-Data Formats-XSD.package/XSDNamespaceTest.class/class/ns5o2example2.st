non-normative examples
ns5o2example2
	"Example: Applying Namespaces to Elements and Attributes:
	Namespace Defaulting"
	^ '<?xml version="1.0"?>
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
</book>'