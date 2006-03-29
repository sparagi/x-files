non-normative examples
primer5o5example2
	"Example: Modification to purchaseReport Declaration to Allow XHTML in Instance from XML Schema Part 0: Primer Second Edition."

	^'<element name="purchaseReport">
  <complexType>
    <sequence>
      <element name="regions" type="r:RegionsType"/>
      <element name="parts"   type="r:PartsType"/>
      <element name="htmlExample">
        <complexType>
          <sequence>
            <any namespace="http://www.w3.org/1999/xhtml"
                 minOccurs="1" maxOccurs="unbounded"
                 processContents="skip"/>
          </sequence>
        </complexType>
      </element>
    </sequence>
    <attribute name="period"       type="duration"/>
    <attribute name="periodEnding" type="date"/>
  </complexType>
</element>'