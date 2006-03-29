non-normative examples
ns4o0example1
	"Example: Using Qualified Names: Attribute"

^'<x xmlns:edi=''http://ecommerce.org/schema''>
  <!-- the ''taxClass'' attribute''s namespace is http://ecommerce.org/schema -->
  <lineItem edi:taxClass="exempt">Baby food</lineItem>
</x>'