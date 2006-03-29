non-normative examples
primer4o8example4
	"Example: Illegal Derivation from Postcode from XML Schema Part 0: Primer Second Edition."

	^'<simpleType name="UKPostcode">
  <restriction base="ipo:Postcode">
    <pattern value="[A-Z]{2}\d\d[A-Z]{2}"/>
    <!-- illegal attempt to modify facet fixed in base type -->
    <length value="6" fixed="true"/>
  </restriction>
</simpleType>'