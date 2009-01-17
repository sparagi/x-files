initialization
readHostFrom: escapingStream
	"Parse my host identifier from escapingStream."

	host := URIHostIdentifier from: escapingStream.
