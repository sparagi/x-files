non-normative examples
ns5o3example1
	"Example: Applying Namespaces to Elements and Attributes:
	Uniqueness of Attributes"
	^ '<!-- http://www.w3.org is bound to n1 and is the default -->
<x xmlns:n1="http://www.w3.org" 
   xmlns="http://www.w3.org" >
  <good a="1"     b="2" />
  <good a="1"     n1:a="2" />
</x>'