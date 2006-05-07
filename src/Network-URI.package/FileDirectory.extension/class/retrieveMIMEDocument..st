*network-uri
retrieveMIMEDocument: uri
	| file |
	file  _ [self contentStreamForURI: uri] 
			on: FileDoesNotExistException do:[:ex| ex return: nil].
	file ifNotNil: [^MIMEDocument contentStream: file mimeType: (MIMEType forExtension: uri extension)].
	^nil