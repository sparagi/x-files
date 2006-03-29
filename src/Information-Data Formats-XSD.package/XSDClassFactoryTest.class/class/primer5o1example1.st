non-normative examples
primer5o1example1
	"Example: A Unique Composed Value from XML Schema Part 0: Primer Second Edition."

	^'<xsd:element name="items" type="Items">
  <xsd:unique name="partNumAndName">
    <xsd:selector xpath="item"/>
    <xsd:field    xpath="@partNum"/>
    <xsd:field    xpath="productName"/>
  </xsd:unique>
</xsd:element>'