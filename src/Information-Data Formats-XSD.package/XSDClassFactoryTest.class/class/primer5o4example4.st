non-normative examples
primer5o4example4
	"Example: Instance Document Conforming to Report Schema with Analyst Type from XML Schema Part 0: Primer Second Edition."

	^'<r:purchaseReport
  xmlns:r="http://www.example.com/Report"
  period="P3M" periodEnding="1999-12-31">
  <!-- regions and parts elements omitted -->
   <r:analyst>
        <name>Wendy Uhro</name>
        <street>10 Corporate Towers</street>
        <city>San Jose</city>
        <state>CA</state>
        <zip>95113</zip>
        <r:phone>408-271-3366</r:phone>
        <r:email>uhro@example.com</r:email>
   </r:analyst>
</r:purchaseReport>'