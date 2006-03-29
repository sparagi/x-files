non-normative examples
primer5o5example3
	"Example: Text Type from XML Schema Part 0: Primer Second Edition."

	^'<xsd:complexType name="text">
  <xsd:complexContent mixed="true">
    <xsd:restriction base="xsd:anyType">
      <xsd:sequence>
        <xsd:any processContents="lax" minOccurs="0" maxOccurs="unbounded"/>
      </xsd:sequence>
      <xsd:attribute ref="xml:lang"/>
    </xsd:restriction>
  </xsd:complexContent>
</xsd:complexType>'