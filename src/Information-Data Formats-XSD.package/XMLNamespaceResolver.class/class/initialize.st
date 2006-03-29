initialization
initialize
	"Create the default instance of myself."

	Default := self basicNew.
	"From 'Namespaces in XML':
	The prefix xml is by definition bound to the namespace name http://www.w3.org/XML/1998/namespace."
	"Default
		allElementTypesAt: 'xml' put: (XMLNamespace withUri: 'http://www.w3.org/XML/1998/namespace');
		globalAttributeTypesAt: 'xml' put: (XMLNamespace withUri: 'http://www.w3.org/XML/1998/namespace')."