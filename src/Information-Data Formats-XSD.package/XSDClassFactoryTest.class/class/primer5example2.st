non-normative examples
primer5example2
	"Example: The Report Schema, report.xsd from XML Schema Part 0: Primer Second Edition."

	^'<schema targetNamespace="http://www.example.com/Report"
        xmlns="http://www.w3.org/2001/XMLSchema"
        xmlns:r="http://www.example.com/Report"
        xmlns:xipo="http://www.example.com/IPO"
        elementFormDefault="qualified">

  <!-- for SKU -->
  <import namespace="http://www.example.com/IPO"/>

  <annotation>
    <documentation xml:lang="en">
      Report schema for Example.com
      Copyright 2000 Example.com. All rights reserved.
    </documentation>
  </annotation>

  <element name="purchaseReport">
    <complexType>
      <sequence>
        <element name="regions" type="r:RegionsType"/>
          
        <element name="parts" type="r:PartsType"/>
      </sequence>
      <attribute name="period"       type="duration"/>
      <attribute name="periodEnding" type="date"/>
    </complexType>

    <unique name="dummy1">
      <selector xpath="r:regions/r:zip"/>
      <field xpath="@code"/>
    </unique>

    <key name="pNumKey">
      <selector xpath="r:parts/r:part"/>
      <field xpath="@number"/>
    </key>

    <keyref name="dummy2" refer="r:pNumKey">
      <selector xpath="r:regions/r:zip/r:part"/>
      <field xpath="@number"/>
    </keyref>

  </element>

  <complexType name="RegionsType">
    <sequence>
      <element name="zip" maxOccurs="unbounded">
        <complexType>
          <sequence>
            <element name="part" maxOccurs="unbounded">
              <complexType>
                <complexContent>
                  <restriction base="anyType">
                    <attribute name="number"   type="xipo:SKU"/>
                    <attribute name="quantity" type="positiveInteger"/>
                  </restriction>
                </complexContent>
              </complexType>
            </element>
          </sequence>
          <attribute name="code" type="positiveInteger"/>
        </complexType>
      </element>
    </sequence>
  </complexType>

  <complexType name="PartsType">
    <sequence>
      <element name="part" maxOccurs="unbounded">
        <complexType>
          <simpleContent>
            <extension base="string">
              <attribute name="number" type="xipo:SKU"/>
            </extension>
          </simpleContent>
        </complexType>
      </element>
    </sequence>
  </complexType>

</schema>'