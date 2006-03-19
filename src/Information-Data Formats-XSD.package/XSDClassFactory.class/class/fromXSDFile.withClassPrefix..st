instance creation
fromXSDFile: fileName withClassPrefix: classPrefix
	"Answer a new instance of myself, using the schema described in fileName, configured to create classes beginning with classPrefix."

	| fileStream xml |
	fileStream _ (FileDirectory forFileName: fileName) 
		fileNamed: (FileDirectory localNameFor: fileName).
	xml _ XMLDOMParser parseDocumentFrom: fileStream.
	fileStream close.
	
	^self fromXSD: xml withClassPrefix: classPrefix