instantiation
withScheme: scheme
	"Answer a new instance of myself with scheme set to scheme (conforms to String)."

	^(self classToRepresent: scheme) new scheme: scheme