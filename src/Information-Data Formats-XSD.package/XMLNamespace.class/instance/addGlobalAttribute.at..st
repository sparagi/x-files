accessing
addGlobalAttribute: aClass at: nameString
	"Register aClass to be retrieved as a global attribute using nameString."
	
	self add: aClass at: nameString in: #globalAttributes 
	