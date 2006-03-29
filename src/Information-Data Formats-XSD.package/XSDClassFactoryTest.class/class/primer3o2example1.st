non-normative examples
primer3o2example1
	"Example: Modifications to po1.xsd for Qualified Locals from XML Schema Part 0: Primer Second Edition."

	^'<schema xmlns="http://www.w3.org/2001/XMLSchema"
        xmlns:po="http://www.example.com/PO1"
        targetNamespace="http://www.example.com/PO1"
        elementFormDefault="qualified"
        attributeFormDefault="unqualified">

  <element name="purchaseOrder" type="po:PurchaseOrderType"/>
  <element name="comment"       type="string"/>

  <complexType name="PurchaseOrderType">
    <!-- etc. -->
  </complexType>

  <!-- etc. -->

</schema>'