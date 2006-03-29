non-normative examples
primer2o3example3
	"Example: Using the Enumeration Facet from XML Schema Part 0: Primer Second Edition."

	^'<xsd:simpleType name="USState">
  <xsd:restriction base="xsd:string">
    <xsd:enumeration value="AK"/>
    <xsd:enumeration value="AL"/>
    <xsd:enumeration value="AR"/>
    <!-- and so on ... -->
  </xsd:restriction>
</xsd:simpleType>'