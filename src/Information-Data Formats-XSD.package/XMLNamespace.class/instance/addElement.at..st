accessing
addElement: aClass at: nameString
	"Register aClass to be retrieved as an element, using nameString."
	
		self add: aClass at: nameString in: #allElements
	