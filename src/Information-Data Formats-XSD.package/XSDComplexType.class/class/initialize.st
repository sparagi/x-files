initialization
initialize
	"Set up my attributeDefinitions dictionary."

	super initialize.
	attributeSelectors _ Dictionary new.
	requiredAttributes _ IdentitySet new.
	knownElements _ OrderedCollection new.
