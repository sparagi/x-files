non-normative examples
testNs5o2example4
	"Example 4 from Namespaces in XML section 5.2. Namespace
	Defaulting. "
	| doc beers table details td pro nsUri |
	doc := XMLDocument fromString: '<?xml version=''1.0''?>
<Beers>
  <!-- the default namespace is now that of HTML -->
  <table xmlns=''http://www.w3.org/TR/REC-html40''>
   <th><td>Name</td><td>Origin</td><td>Description</td></th>
   <tr> 
     <!-- no default namespace inside table cells -->
     <td><brandName xmlns="">Huntsman</brandName></td>
     <td><origin xmlns="">Bath, UK</origin></td>
     <td>
       <details xmlns=""><class>Bitter</class><hop>Fuggles</hop>
         <pro>Wonderful hop, light alcohol, good summer beer</pro>
         <con>Fragile; excessive variance pub to pub</con>
         </details>
        </td>
      </tr>
    </table>
  </Beers>'.
	beers := doc elementAt: 'Beers'.
	table := beers elementAt: 'table'.
	td :=(table elementAt: 'tr') elements at: 3.
	details := td elementAt: 'details'.
	pro := details elementAt: 'pro'.
	nsUri := URI fromString: 'http://www.w3.org/TR/REC-html40'.
	self
		should: [beers namespace isNil].
	self
		should: [table namespace uri = nsUri].
	self
		should: [td namespace uri = nsUri].
	self
		should: [details namespace isNil].
	self
		should: [pro namespace isNil]