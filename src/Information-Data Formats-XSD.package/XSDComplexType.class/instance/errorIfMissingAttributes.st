initialization
errorIfMissingAttributes
	"Create an Exception if there are missing attributes."

	| attributes |
	attributes _ self class requiredAttributeSelectors.
	attributes do: [:selector |
		(self perform: selector) ifNil: [self error: 'required attribute not present']]
