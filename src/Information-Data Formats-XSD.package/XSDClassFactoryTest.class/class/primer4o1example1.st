non-normative examples
primer4o1example1
	"Example: The International Purchase Order Schema, ipo.xsd from XML Schema Part 0: Primer Second Edition."

	^'<schema targetNamespace="http://www.example.com/IPO"
        xmlns="http://www.w3.org/2001/XMLSchema"
        xmlns:ipo="http://www.example.com/IPO">

  <annotation>
    <documentation xml:lang="en">
      International Purchase order schema for Example.com
      Copyright 2000 Example.com. All rights reserved.
    </documentation>
  </annotation>

  <!-- include address constructs -->
  <include
    schemaLocation="http://www.example.com/schemas/address.xsd"/>

  <element name="purchaseOrder" type="ipo:PurchaseOrderType"/>

  <element name="comment" type="string"/>

  <complexType name="PurchaseOrderType">
    <sequence>
      <element name="shipTo"     type="ipo:Address"/>
      <element name="billTo"     type="ipo:Address"/>
      <element ref="ipo:comment" minOccurs="0"/>
      <element name="items"      type="ipo:Items"/>
    </sequence>
    <attribute name="orderDate" type="date"/>
  </complexType>

  <complexType name="Items">
    <sequence>
      <element name="item" minOccurs="0" maxOccurs="unbounded">
        <complexType>
          <sequence>
            <element name="productName" type="string"/>
            <element name="quantity">
              <simpleType>
                <restriction base="positiveInteger">
                  <maxExclusive value="100"/>
                </restriction>
              </simpleType>
            </element>
            <element name="USPrice"    type="decimal"/>
            <element ref="ipo:comment" minOccurs="0"/>
            <element name="shipDate"   type="date" minOccurs="0"/>
          </sequence>
          <attribute name="partNum" type="ipo:SKU" use="required"/>
        </complexType>
      </element>
    </sequence>
  </complexType>

  <simpleType name="SKU">
    <restriction base="string">
      <pattern value="\d{3}-[A-Z]{2}"/>
    </restriction>
  </simpleType>

</schema>'