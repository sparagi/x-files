accessing
atPrefix: prefixString
	"Answer the namespace denoted by the given prefixString."
	
	^ namespaces at: prefixString ifAbsent: [self shouldBeImplemented]