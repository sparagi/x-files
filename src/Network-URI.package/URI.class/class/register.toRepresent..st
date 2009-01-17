scheme registry
register: class toRepresent: scheme
	"Register class (a Class, typically a subclass of URI) to represent URI's of the given scheme 
	(conforms to String)."
	
	^ClassByScheme at: scheme put: class