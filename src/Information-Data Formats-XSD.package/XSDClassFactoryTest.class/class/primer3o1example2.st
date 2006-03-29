non-normative examples
primer3o1example2
	"Example: A Purchase Order with Unqualified Locals, po1.xml from XML Schema Part 0: Primer Second Edition."

	^'<?xml version="1.0"?>
<apo:purchaseOrder xmlns:apo="http://www.example.com/PO1"
                   orderDate="1999-10-20">
  <shipTo country="US">
    <name>Alice Smith</name>
    <street>123 Maple Street</street>
    <!-- etc. -->
  </shipTo>
  <billTo country="US">
    <name>Robert Smith</name>
    <street>8 Oak Avenue</street>
    <!-- etc. -->
  </billTo>
  <apo:comment>Hurry, my lawn is going wild<!/apo:comment>
  <!-- etc. -->
</apo:purchaseOrder>'