instance creation
fromXMLFile: fileName
	"Answer an instance of myself, initialized from the contents of fileName."

	| fileStream xml |
	fileStream _ (FileDirectory forFileName: fileName) 
		fileNamed: (FileDirectory localNameFor: fileName).
	xml _ XMLDOMParser parseDocumentFrom: fileStream.
	fileStream close.
	
	^self fromXML: xml