non-normative examples
primer3o2example5
	"Example: Instance with a Qualified Attribute from XML Schema Part 0: Primer Second Edition."

	^'<?xml version="1.0"?>
<purchaseOrder xmlns="http://www.example.com/PO1"
               xmlns:po="http://www.example.com/PO1"
               orderDate="1999-10-20">
  <!-- etc. -->
  <secure po:publicKey="GpM7">
    <!-- etc. -->
  </secure>
</purchaseOrder>'