non-normative examples
primer5o4o1example1
	"Example: Example Currency Type in Type Library from XML Schema Part 0: Primer Second Edition."

	^'<schema targetNamespace="http://www.example.com/Currency"
        xmlns:c="http://www.example.com/Currency"
        xmlns="http://www.w3.org/2001/XMLSchema">

  <annotation>
    <documentation xml:lang="en">
      Definition of Currency type based on ISO 4217
    </documentation>
  </annotation>

  <complexType name="Currency">
    <simpleContent>
      <extension base="decimal">
        <attribute name="name">
          <simpleType>
            <restriction base="string">

              <enumeration value="AED">
                <annotation>
                  <documentation xml:lang="en">
                    United Arab Emirates: Dirham (1 Dirham = 100 Fils)
                  </documentation>
                </annotation>
              </enumeration>

              <enumeration value="AFA">
                <annotation>
                  <documentation xml:lang="en">
                    Afghanistan: Afghani (1 Afghani = 100 Puls)
                  </documentation>
                </annotation>
              </enumeration>

              <enumeration value="ALL">
                <annotation>
                  <documentation xml:lang="en">
                    Albania, Lek (1 Lek = 100 Qindarka)
                  </documentation>
                </annotation>
              </enumeration>

              <!-- and other currencies -->

            </restriction>
          </simpleType>
        </attribute>
      </extension>
    </simpleContent>
  </complexType>

</schema>'