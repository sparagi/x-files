processing
resolveReferencesToType: typeName
	"I resolve any forward references that built up for typeName before its definition was encountered."

	| referencesToResolve |
	
	referencesToResolve _ forwardReferences at: typeName ifAbsent: [#()].
	[referencesToResolve isEmpty] whileFalse: [
		"Clean up forwardReferences, then attempt to resolve the entries."
		forwardReferences removeKey: typeName.	
		referencesToResolve do: [:reference | | class xml |
			class _ reference at: 1.
			xml _ reference at: 2.
			self reprocessXML: xml inClass: class].
			
		"Try again in case the order was pessimal & some things were entered in referencesToResolve: a second time."
		referencesToResolve _ forwardReferences at: typeName ifAbsent: [#()]].		
				
	"All the references have been resolved; clean up unresolvedElements/unresolvedAttributes."
	unresolvedElements keysAndValuesRemove: [:elementString :typeString | typeString = typeName].
	unresolvedAttributes keysAndValuesRemove: [:elementString :typeString | typeString = typeName]
	
	

