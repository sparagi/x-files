non-normative examples
primer4o2example1
	"Example: Effective Content Model of UKAddress from XML Schema Part 0: Primer Second Edition."

	^'<complexType name="UKAddress">
  <sequence>
    <!-- content model of Address -->
    <element name="name"   type="string"/>
    <element name="street" type="string"/>
    <element name="city"   type="string"/>

    <!-- appended element declaration -->
    <element name="postcode" type="ipo:UKPostcode"/>
  </sequence>

  <!-- appended attribute declaration -->
  <attribute name="exportCode" type="positiveInteger" fixed="1"/>
</complexType>'