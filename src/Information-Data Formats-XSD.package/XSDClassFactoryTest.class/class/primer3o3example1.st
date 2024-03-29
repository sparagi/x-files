non-normative examples
primer3o3example1
	"Example: Modified version of po1.xsd  using only global element declarations from XML Schema Part 0: Primer Second Edition."

	^'<schema xmlns="http://www.w3.org/2001/XMLSchema"
        xmlns:po="http://www.example.com/PO1"
        targetNamespace="http://www.example.com/PO1">

  <element name="purchaseOrder" type="po:PurchaseOrderType"/>

  <element name="shipTo"  type="po:USAddress"/>
  <element name="billTo"  type="po:USAddress"/>
  <element name="comment" type="string"/>

  <element name="name" type="string"/>
  <element name="street" type="string"/>

  <complexType name="PurchaseOrderType">
    <sequence>
      <element ref="po:shipTo"/>
      <element ref="po:billTo"/>
      <element ref="po:comment" minOccurs="0"/>
      <!-- etc. -->
    </sequence>
  </complexType>

  <complexType name="USAddress">
    <sequence>
      <element ref="po:name"/>
      <element ref="po:street"/>
      <!-- etc. -->
    </sequence>
  </complexType>

  <!-- etc. -->

</schema>'