non-normative examples
ns5o3example0
	"Example: Applying Namespaces to Elements and Attributes: Uniqueness of Attributes"
	^ '<!-- http://www.w3.org is bound to n1 and n2 -->
<x xmlns:n1="http://www.w3.org" 
   xmlns:n2="http://www.w3.org" >
  <bad a="1"     a="2" />
  <bad n1:a="1"  n2:a="2" />
</x>'