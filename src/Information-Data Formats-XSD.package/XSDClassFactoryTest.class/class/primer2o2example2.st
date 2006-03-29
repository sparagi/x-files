non-normative examples
primer2o2example2
	"Example: Defining PurchaseOrderType from XML Schema Part 0: Primer Second Edition.   This example also includes example 3 from section 2.2"

	^'<xsd:complexType name="PurchaseOrderType">
  <xsd:sequence>
    <xsd:element name="shipTo" type="USAddress"/>
    <xsd:element name="billTo" type="USAddress"/>
    <xsd:element ref="comment" minOccurs="0"/>
    <xsd:element name="items"  type="Items"/>
  </xsd:sequence>
  <xsd:attribute name="orderDate" type="xsd:date"/>
</xsd:complexType>'