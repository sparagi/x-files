accessing
uri: aURI
	"Set my uri to aURI."

	(uri isNil or: [uri asString = '']) ifFalse: [
		XMLNameError signal: 'cannot change the URI of an existing namespace'].
	(aURI isNil or: [aURI asString = '']) ifTrue: [
		"No change is needed."
		^self].
	Instances at: aURI ifPresent: [:ns | XMLNameError signal: 'cannot replace an existing namespace for this URI'].
	
	uri := aURI.
	Instances at: aURI put: self.
