initialization
readFrom: escapingStream
	"Parse my instance variables from escapingStream (conforms to URIStream).
	If successful, leave escapingStream's position at the end of the host portion.  Otherwise, 
	leave escapingStream at its current position."
	
	name := escapingStream nextWhileIn: #'reg-name'.
