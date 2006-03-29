non-normative examples
primer5o5example4
	"Example: Modification to htmlExample Declaration to Allow XHTML Attributes from XML Schema Part 0: Primer Second Edition."

	^'<element name="htmlExample">
  <complexType>
    <sequence>
      <any namespace="http://www.w3.org/1999/xhtml"
           minOccurs="1" maxOccurs="unbounded"
           processContents="skip"/>
    </sequence>
    <anyAttribute namespace="http://www.w3.org/1999/xhtml"/>
  </complexType>
</element>'