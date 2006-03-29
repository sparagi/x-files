non-normative examples
primer3o2example2
	"Example: A Purchase Order with Explicitly Qualified Locals from XML Schema Part 0: Primer Second Edition."

	^'<?xml version="1.0"?>
<apo:purchaseOrder xmlns:apo="http://www.example.com/PO1"
                   orderDate="1999-10-20">
  <apo:shipTo country="US">
    <apo:name>Alice Smith</apo:name>
    <apo:street>123 Maple Street</apo:street>
    <!-- etc. -->
  </apo:shipTo>
  <apo:billTo country="US">
    <apo:name>Robert Smith</apo:name>
    <apo:street>8 Oak Avenue</apo:street>
    <!-- etc. -->
  </apo:billTo>
  <apo:comment>Hurry, my lawn is going wild<!/apo:comment>
  <!-- etc. -->
</apo:purchaseOrder>'