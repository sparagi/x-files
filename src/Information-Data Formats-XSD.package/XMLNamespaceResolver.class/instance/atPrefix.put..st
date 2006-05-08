accessing
atPrefix: prefixString put: namespace
	"Cause the given namespace to be denoted by the given prefixString."
	
	^ namespaces at: prefixString put: namespace