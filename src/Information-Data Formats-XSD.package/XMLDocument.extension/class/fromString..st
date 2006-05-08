*Information-Data Formats-XSD
fromString: xmlString
	"Answer a new instance of myself, with instance variables populated from xmlString."
	
	^XMLDOMParser parseDocumentFrom: xmlString readStream