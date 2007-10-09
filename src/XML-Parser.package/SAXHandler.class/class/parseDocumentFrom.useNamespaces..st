instance creation
parseDocumentFrom: aStream useNamespaces: aBoolean
	|  parser |
	parser _ self on: aStream.
	parser useNamespaces: aBoolean.
	parser startDocument.
	parser parseDocument.
	^parser