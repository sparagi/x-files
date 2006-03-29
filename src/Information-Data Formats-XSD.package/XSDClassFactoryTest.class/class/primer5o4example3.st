non-normative examples
primer5o4example3
	"Example: Defining Analyst by Extending USAddress from XML Schema Part 0: Primer Second Edition."

	^'<complexType name="Analyst">
 <complexContent>
  <extension base="xipo:USAddress">
   <sequence>
    <element name="phone" type="string"/>
    <element name="email" type="string"/>
   </sequence>
  </extension>
 </complexContent>
</complexType>'