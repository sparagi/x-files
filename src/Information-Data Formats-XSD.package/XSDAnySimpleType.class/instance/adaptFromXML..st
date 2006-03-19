instance creation
adaptFromXML: xml
	"Answer a new instance of my class which is similar to myself, but with the changes dictated by xml."

	| newInstance use |
	newInstance _ self class new.
	newInstance conversionSelector: conversionSelector.
	
	"Determine whether the new instance is required."
	use _ xml attributeAt: 'use' ifAbsent: [''].
	newInstance required: (self required or: [use = 'required']).
	
	"Determine our fixed or default value."
	newInstance default: (xml attributeAt: 'default' ifAbsent: [xml attributeAt: 'fixed' ifAbsent: [default]]).

	"Determine whether the instance is prohibited."
	newInstance restrictionCode: 
		(use = 'prohibited'
			ifTrue: [
				String streamContents: [:stream |
					stream
						nextPutAll: '	self error: ''disallowed attribute''.';
						cr]]
			ifFalse: [restrictionCode])
	