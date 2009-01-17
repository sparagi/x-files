scheme registry
classToRepresent: scheme
	"Answer the class (usually a subclass of URI) used to represent a URI of the given scheme 
	(conforms to String)."
	
	^ClassByScheme at: scheme ifAbsent: [URI]