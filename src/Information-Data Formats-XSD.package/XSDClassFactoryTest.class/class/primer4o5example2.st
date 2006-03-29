non-normative examples
primer4o5example2
	"Example: Snippet of ipo.xml using Redefined Address from XML Schema Part 0: Primer Second Edition."

	^'<!-- .... -->
 <shipTo exportCode="1" xsi:type="ipo:UKAddress">
   <name>Helen Zoe</name>
   <street>47 Eden Street</street>
   <city>Cambridge</city>
   <!-- country was added to Address which is base type of UKAddress -->
   <country>United Kingdom</country>
   <!-- postcode was added as part of UKAddress -->
   <postcode>CB1 1JR</postcode>
 </shipTo>
 <!-- .... -->'