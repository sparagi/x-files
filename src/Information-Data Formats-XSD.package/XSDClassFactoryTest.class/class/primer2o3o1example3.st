non-normative examples
primer2o3o1example3
	"Example: List Type for Six US States from XML Schema Part 0: Primer Second Edition."

	^'<xsd:simpleType name="USStateList">
  <xsd:list itemType="USState"/>
</xsd:simpleType>

<xsd:simpleType name="SixUSStates">
  <xsd:restriction base="USStateList">
    <xsd:length value="6"/>
  </xsd:restriction>
</xsd:simpleType>'