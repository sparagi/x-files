non-normative examples
ns5o2example3
	"Example: Applying Namespaces to Elements and Attributes:
	Namespace Defaulting"
	^ '<?xml version=''1.0''?>
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
  </Beers>'