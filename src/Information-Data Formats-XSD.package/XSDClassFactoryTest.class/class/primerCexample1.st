non-normative examples
primerCexample1
	"Example: Declaring and referencing an entity in an instance document from XML Schema Part 0: Primer Second Edition."

	^'<?xml version="1.0" ?>
<!DOCTYPE purchaseOrder [
<!ENTITY eacute "&#xE9;">
]>
<purchaseOrder xmlns="http://www.example.com/PO1"
               orderDate="1999-10-20">
  <!-- etc. -->
    <city>Montr&eacute;al</city>
  <!-- etc. -->
</purchaseOrder>'