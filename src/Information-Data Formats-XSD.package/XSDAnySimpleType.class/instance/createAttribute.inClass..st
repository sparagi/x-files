processing
createAttribute: attributeName inClass: class
	"Create an instance variable, accessors and appropriate reading foo for attributeName."
	
	| camelName method |
	camelName _ attributeName withFirstCharacterDownshifted.
	class addInstVarName: camelName.
	
	"Create the accessors."
	method _ String streamContents: [:stream |
		stream
			nextPutAll: camelName;									cr;
			nextPutAll: '	"Answer the value of ', camelName, '."';	cr;
			cr;
			nextPutAll: '	^', camelName;							cr.
		default ifNotNil: [
			stream
				nextPutAll: '		ifNil: [XSDSimpleType ',  conversionSelector asString, ' ''', default, ''']';		cr;
				nextPutAll: '		ifNotNil: [', camelName, ']';		cr]].
		class compile: method classified: 'accessing'.
	method _ String streamContents: [:stream |
		stream
			nextPutAll: camelName, ': anObject';						cr;
			nextPutAll: '	"Set the value of ', camelName, ' to anObject."';	cr;
			nextPutAll: '	| value |';
			cr; cr;
			nextPutAll: '	value _ XSDSimpleType ', conversionSelector asString, ' anObject.';	cr.
		restrictionCode ifNotNil: [stream nextPutAll: restrictionCode; cr].
		stream nextPutAll: '	', camelName, ' _ value.'; cr].
	class compile: method classified: 'accessing'.
	
	class writeSelectorForAttribute: attributeName is: (camelName, ':') asSymbol.
	
	self required ifTrue: [class requiredAttribute: camelName asSymbol]
