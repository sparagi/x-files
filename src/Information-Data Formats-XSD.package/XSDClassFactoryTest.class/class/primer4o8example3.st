non-normative examples
primer4o8example3
	"Example: Legal Derivation from Postcode from XML Schema Part 0: Primer Second Edition."

	^'<simpleType name="UKPostcode">
  <restriction base="ipo:Postcode">
    <pattern value="[A-Z]{2}\d\s\d[A-Z]{2}"/>
  </restriction>
</simpleType>'