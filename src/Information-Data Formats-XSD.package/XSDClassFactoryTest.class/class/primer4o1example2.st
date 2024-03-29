non-normative examples
primer4o1example2
	"Example: Addresses for International Purchase Order schema, address.xsd from XML Schema Part 0: Primer Second Edition."

	^'<schema targetNamespace="http://www.example.com/IPO"
        xmlns="http://www.w3.org/2001/XMLSchema"
        xmlns:ipo="http://www.example.com/IPO">

  <annotation>
    <documentation xml:lang="en">
      Addresses for International Purchase order schema
      Copyright 2000 Example.com. All rights reserved.
    </documentation>
  </annotation>

  <complexType name="Address">
    <sequence>
      <element name="name"   type="string"/>
      <element name="street" type="string"/>
      <element name="city"   type="string"/>
    </sequence>
  </complexType>

  <complexType name="USAddress">
    <complexContent>
      <extension base="ipo:Address">
        <sequence>
          <element name="state" type="ipo:USState"/>
          <element name="zip"   type="positiveInteger"/>
        </sequence>
      </extension>
    </complexContent>
  </complexType>

  <complexType name="UKAddress">
    <complexContent>
      <extension base="ipo:Address">
        <sequence>
          <element name="postcode" type="ipo:UKPostcode"/>
        </sequence>
        <attribute name="exportCode" type="positiveInteger" fixed="1"/>
      </extension>
    </complexContent>
  </complexType>

  <!-- other Address derivations for more countries -->

  <simpleType name="USState">
    <restriction base="string">
      <enumeration value="AK"/>
      <enumeration value="AL"/>
      <enumeration value="AR"/>
      <!-- and so on ... -->
    </restriction>
  </simpleType>

  <!-- simple type definition for UKPostcode -->

</schema>'