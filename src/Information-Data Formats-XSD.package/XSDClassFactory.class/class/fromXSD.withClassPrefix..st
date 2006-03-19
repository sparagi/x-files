instance creation
fromXSD: xml withClassPrefix: classPrefix
	"Answer a new instance of myself, using the schema described in xmlDocument, configured to create classes beginning with classPrefix."
	
	^(self new)
		schema: xml;
		classPrefix: classPrefix;
		yourself