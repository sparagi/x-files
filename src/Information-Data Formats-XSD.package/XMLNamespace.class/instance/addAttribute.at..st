accessing
addAttribute: aClass at: nameString
	"Register aClass to be retrieved as an attribute for this elementType, using nameString."
	
	self add: aClass at: nameString in: #perElementAttributes
	