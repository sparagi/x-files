non-normative examples
primer4o5example1
	"Example: Using redefine in the International Purchase Order from XML Schema Part 0: Primer Second Edition."

	^'<schema targetNamespace="http://www.example.com/IPO"
        xmlns="http://www.w3.org/2001/XMLSchema"
        xmlns:ipo="http://www.example.com/IPO">

  <!-- bring in address constructs -->
  <redefine
    schemaLocation="http://www.example.com/schemas/address.xsd">

    <!-- redefinition of Address -->
    <complexType name="Address">
      <complexContent>
        <extension base="ipo:Address">
          <sequence>
            <element name="country" type="string"/>
          </sequence>
        </extension>
      </complexContent>
    </complexType>

  </redefine>

  <!-- etc. -->

</schema>'