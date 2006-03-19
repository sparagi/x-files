processing
createSubclassOf: aClass namedNear: partialClassName 
	"Create a new class."
	
	| newClassName newClass |
	
	"Figure out the actual name."
	newClassName _ classPrefix,(partialClassName capitalized).
	partialClassName = 'Anonymous' ifTrue: [
		newClassName _ newClassName, anonymousClassCounter asString.
		anonymousClassCounter _ anonymousClassCounter +1].
		
	"Create this class."
	newClass _ aClass
		subclass: newClassName asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'XML-XSD Derived-', classPrefix.
	newClass initialize.
	
	"Add the class to the class stack."
	classStack addLast: newClass.
	
	^newClass