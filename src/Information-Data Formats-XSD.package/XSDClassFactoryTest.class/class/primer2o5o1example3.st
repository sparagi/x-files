non-normative examples
primer2o5o1example3
	"Example: Deriving a Complex Type from a Simple Type from XML Schema Part 0: Primer Second Edition."

	^'<xsd:element name="internationalPrice">
  <xsd:complexType>
    <xsd:simpleContent>
      <xsd:extension base="xsd:decimal">
        <xsd:attribute name="currency" type="xsd:string"/>
      </xsd:extension>
    </xsd:simpleContent>
  </xsd:complexType>
</xsd:element>'