non-normative examples
primer2o3example1
	"Example: Defining myInteger, Range 10000-99999 from XML Schema Part 0: Primer Second Edition."

	^'<xsd:simpleType name="myInteger">
  <xsd:restriction base="xsd:integer">
    <xsd:minInclusive value="10000"/>
    <xsd:maxInclusive value="99999"/>
  </xsd:restriction>
</xsd:simpleType>'