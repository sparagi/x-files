non-normative examples
primerCexample3
	"Example: Using an element instead of an entity in an instance document from XML Schema Part 0: Primer Second Edition."

	^'<?xml version="1.0" ?>
<purchaseOrder xmlns="http://www.example.com/PO1"
               xmlns:c="http://www.example.com/characterElements"
               orderDate="1999-10-20">
  <!-- etc. -->
    <city>Montr<c:eacute/>al</city>
  <!-- etc. -->
</purchaseOrder>'