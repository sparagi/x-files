non-normative examples
primer4o7example2
	"Example: Schema for Vehicles from XML Schema Part 0: Primer Second Edition."

	^'<schema xmlns="http://www.w3.org/2001/XMLSchema"
           targetNamespace="http://cars.example.com/schema"
           xmlns:target="http://cars.example.com/schema">

  <complexType name="Vehicle" abstract="true"/>

  <complexType name="Car">
    <complexContent>
      <extension base="target:Vehicle"/>
    </complexContent>
  </complexType>

  <complexType name="Plane">
    <complexContent>
      <extension base="target:Vehicle"/>
    </complexContent>
  </complexType>

  <element name="transport" type="target:Vehicle"/>
</schema>'