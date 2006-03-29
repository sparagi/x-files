non-normative examples
primer3o2example3
	"Example: A Purchase Order with Default Qualified Locals, po2.xml from XML Schema Part 0: Primer Second Edition."

	^'<?xml version="1.0"?>
<purchaseOrder xmlns="http://www.example.com/PO1"
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
  <comment>Hurry, my lawn is going wild<!/comment>
  <!-- etc. -->
</purchaseOrder>'