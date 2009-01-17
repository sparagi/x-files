initialization
readQueryFrom: escapingStream
	"Attempt to parse a query from escapingStream (conforms to URIStream).  If successful, 
	leave the position of escapingStream after the query.  If unsuccessful, leave the position
	of escapingStream where it began."

	(escapingStream peekFor: $?) ifTrue: [query := escapingStream nextWhileIn: #query]