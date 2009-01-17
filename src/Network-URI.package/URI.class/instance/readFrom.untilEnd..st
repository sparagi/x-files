initialization
readFrom: escapingStream untilEnd: endRequired
	"Parse my instance variables from escapingStream (conforms to URIStream).
	If I was successful, I leave escapingStream's position at the end of the URI. If I don't have to
	use escapingStream's entire contents, it may be that escapingStream is not at its end. 
	If escapingStream is not at its end, and endRequired (a Boolean) is true, I wasn't 
	successful after all, so I raise an error."

	self readAuthorityFrom: escapingStream.
	self readPathFrom: escapingStream.
	self readQueryFrom: escapingStream.
	self readFragmentFrom: escapingStream.

	"Sanity checks."
	(escapingStream peekForAnyIn: #anywhere) ifTrue: [self error: 'There is an unused legal character.'].
	(endRequired and: [escapingStream peek notNil]) ifTrue: [self error: 'All contents should have been used.'].