non-normative examples
primer2o3example2
	"Example: Defining the Simple Type ""SKU"" from XML Schema Part 0: Primer Second Edition."

	^'<xsd:simpleType name="SKU">
  <xsd:restriction base="xsd:string">
    <xsd:pattern value="\d{3}-[A-Z]{2}"/>
  </xsd:restriction>
</xsd:simpleType>'