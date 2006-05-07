instantiation
from: aURIStream
	"Answer a new instance of myself composed from the contents of aURIStream."
	"I assume aURIStream's position is at the beginning of the authority, and aURIStream may continue after the end of the authority.  I leave aURIStream's position after the last character in the authority."
	
	| authority |

	^(authority _ HostAuthority new initializeFrom: aURIStream)
		ifNil: [
			(authority _ RegisteredAuthority new initializeFrom: aURIStream)
				ifNil: [self error: 'invalid authority']
				ifNotNil: [authority]]
		ifNotNil: [authority]