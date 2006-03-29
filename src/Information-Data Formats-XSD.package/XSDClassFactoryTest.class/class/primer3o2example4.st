non-normative examples
primer3o2example4
	"Example: Requiring Qualification of Single Attribute from XML Schema Part 0: Primer Second Edition."

	^'<schema xmlns="http://www.w3.org/2001/XMLSchema"
        xmlns:po="http://www.example.com/PO1"
        targetNamespace="http://www.example.com/PO1"
        elementFormDefault="qualified"
        attributeFormDefault="unqualified">
  <!-- etc. -->
  <element name="secure">
    <complexType>
      <sequence>
        <!-- element declarations -->
      </sequence>
      <attribute name="publicKey" type="base64Binary" form="qualified"/>
    </complexType>
  </element>
</schema>'