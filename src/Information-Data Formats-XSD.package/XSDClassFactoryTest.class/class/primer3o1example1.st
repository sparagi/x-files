non-normative examples
primer3o1example1
	"Example: Purchase Order Schema with Target Namespace, po1.xsd from XML Schema Part 0: Primer Second Edition."

	^'<schema xmlns="http://www.w3.org/2001/XMLSchema"
        xmlns:po="http://www.example.com/PO1"
        targetNamespace="http://www.example.com/PO1"
        elementFormDefault="unqualified"
        attributeFormDefault="unqualified">

  <element name="purchaseOrder" type="po:PurchaseOrderType"/>
  <element name="comment"       type="string"/>

  <complexType name="PurchaseOrderType">
    <sequence>
      <element name="shipTo"    type="po:USAddress"/>
      <element name="billTo"    type="po:USAddress"/>
      <element ref="po:comment" minOccurs="0"/>
      <!-- etc. -->
    </sequence>
    <!-- etc. -->
  </complexType>

  <complexType name="USAddress">
    <sequence>
      <element name="name"   type="string"/>
      <element name="street" type="string"/>
      <!-- etc. -->
    </sequence>
  </complexType>

  <!-- etc. -->

</schema>'