processing
createElement: elementName from: minOccurs to: maxOccurs
	"Create an instance variable and appropriate reading foo for elementName."
	
	| min max camelName instanceVariable currentClass |
	
	"Check min and max for consistency."
	min _ minOccurs asInteger.
	max _ maxOccurs asInteger.
	
	self assert: [min notNil].
	self assert: [min >= 0].
	max
		ifNil: [self assert: [maxOccurs = 'unbounded']]
		ifNotNil: [
			self assert: [max >= 0].
			self assert: [max >= min]].
		
	camelName _ elementName withFirstCharacterDownshifted.
	instanceVariable _
		(max isNil or: [max > 1])
			ifTrue: [camelName asPlural]
			ifFalse: [camelName].
	currentClass _ self currentClass.

	"Only bother to add an instance variable if something will go into it and we haven't already created it."
	((max isNil or: [max > 0]) and: [(currentClass instVarNames includes: instanceVariable) not]) ifTrue: [ | method |
		
		"Create the instance variable."
		currentClass addInstVarName: instanceVariable.
		
		"Create the accessors."
		method _ String streamContents: [:stream |
			stream
				nextPutAll: instanceVariable;
				cr;
				nextPutAll: '	"Answer the value of ', instanceVariable, '."';
				cr; cr;
				nextPutAll: '	^', instanceVariable].
		currentClass compile: method classified: 'accessing'.
		method _ String streamContents: [:stream |
			stream
				nextPutAll: instanceVariable, ': anObject';
				cr;
				nextPutAll: '	"Set the value of ', instanceVariable, ' to anObject."';
				cr; cr;
				nextPutAll: '	', instanceVariable, ' _ anObject'].	
		currentClass compile: method classified: 'accessing'.
		
		"Create the parseN method if needed."
		(max isNil or: [max > 1]) ifTrue: [
			method _ String streamContents: [:stream |
				stream
					nextPutAll: 'parseN', instanceVariable capitalized;						cr;
					nextPutAll: '	"Parse the appropriate number of XML elements from readStream, storing the results in ', instanceVariable, '."'; cr;
					cr;
					nextPutAll: '	| nextElement |';											cr;
					cr; 
					nextPutAll: '	', instanceVariable, ' _ OrderedCollection new.';			cr;
					nextPutAll: '	nextElement _ readStream peek.';						cr;
					nextPutAll: '	[nextElement tag = ''', elementName, '''] whileTrue: [';	cr;
					nextPutAll: '		readStream next.';									cr;
					nextPutAll: '		', instanceVariable, ' addLast: self parse', elementName capitalized, '.'; cr;
					nextPutAll: '		nextElement _ readStream peek].';					cr.
				min > 0 ifTrue: [
					stream nextPutAll: '		self assert: [', instanceVariable, ' size >= min].'; 	cr].
				max isNil ifFalse: [
					stream nextPutAll: '		self assert: [', instanceVariable, ' size <= max].'; cr]].
			currentClass compile: method classified: 'parsing'].
				
		"Add a mention of the parsing method to initializeElements."
		max = 1
			ifTrue: [ "instanceVariable, ' _ parse', instanceVariable capitalized, '.'"
				min = 0 ifFalse: ["self assert: ['. instanceVariable, ' notNil].'"]]
			ifFalse: [ "'parseN', instanceVariable capitalized."]]