non-normative examples
primer5o5example1
	"Example: Quarterly Report with XHTML, 4Q99html.xml from XML Schema Part 0: Primer Second Edition."

	^'<purchaseReport
  xmlns="http://www.example.com/Report"
  period="P3M" periodEnding="1999-12-31">

  <regions>
    <!-- part sales listed by zip code, data from 4Q99.xml -->
  </regions>

  <parts>
    <!-- part descriptions from 4Q99.xml -->
  </parts>

  <htmlExample>
    <table xmlns="http://www.w3.org/1999/xhtml"
           border="0" width="100%">
      <tr>
        <th align="left">Zip Code</th>
        <th align="left">Part Number</th>
        <th align="left">Quantity</th>
      </tr>
      <tr><td>95819</td><td> </td><td> </td></tr>
      <tr><td> </td><td>872-AA</td><td>1</td></tr>
      <tr><td> </td><td>926-AA</td><td>1</td></tr>
      <tr><td> </td><td>833-AA</td><td>1</td></tr>
      <tr><td> </td><td>455-BX</td><td>1</td></tr>
      <tr><td>63143</td><td> </td><td> </td></tr>
      <tr><td> </td><td>455-BX</td><td>4</td></tr>
    </table>
  </htmlExample>

</purchaseReport>'