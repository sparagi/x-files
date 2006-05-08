initialization
initialize
	"Create the default instance of myself."

	Default := self new.
	"From 'Namespaces in XML':
	The prefix xml is by definition bound to the namespace name http://www.w3.org/XML/1998/namespace."
	Default
		atPrefix: 'xml' put: (XMLNamespace withUri: 'http://www.w3.org/XML/1998/namespace')