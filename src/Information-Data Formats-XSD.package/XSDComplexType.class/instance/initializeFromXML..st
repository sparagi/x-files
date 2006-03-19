initialization
initializeFromXML: xml
	"Initialize myself from xml."

	self initializeAttributesFromXML: xml.
	elementStream _ ReadStream on: xml elements from: 1 to: xml elements size.
	self initializeElements