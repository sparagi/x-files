subclass creation
subclassFromXML: xml withTypeResolver: resolver
	"Answer a new subclass of myself, populated from xml, using resolver to resolve type names."

	"The xml in question should be a single XMLElement named simpleType."
	| subclassFinal subclassName |
	xml name = 'simpleType' ifFalse: [
		SchemaError signal].
	
	xml attributes do: [:attribute |
		(#('final' 'id' 'name') includes: attribute) ifFalse: [
			XSDTypeError signal: 'unknown attribute for simpleType' with: attribute]].

	subclassFinal := xml attributeAt: 'final'.
	subclassFinal ifNotNil: [
		  "final = (#all | List of (list | union | restriction))"
		].
	
	"xml attributeAt: 'id' doesn't seem to be used in the spec.."
	
	subclassName := XSDNCName value: (xml attributeAt: 'name').
	
	"Content: (annotation?, (restriction | list | union))"
	"
<simpleType name='sizes'>
  <list itemType='decimal'/>
</simpleType>

<cerealSizes xsi:type='sizes'> 8 10.5 12 </cerealSizes>
"
	self halt