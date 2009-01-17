scheme registry
registerDefaultPort: port for: scheme
	"Store port (an Integer) as the default port for scheme (conforms to String)."
	
	DefaultPortByScheme at: scheme put: port