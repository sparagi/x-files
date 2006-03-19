processing
processAttributes
	"Set up my default namespace."

	namespaces := Dictionary new.
	namespaces at: '' put: (XMLNamespace withUri: ("URI fromString: "(schema topElement attributeAt: 'targetNamespace'))).
	