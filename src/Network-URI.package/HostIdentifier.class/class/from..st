instantiation
from: aURIStream
	"Answer a new instance of my appropriate subclass composed from the contents of aURIStream."

	| host |

	host _ IPv4Address new initializeFrom: aURIStream.
	host ifNil: [host _ DomainName new initializeFrom: aURIStream].
	^host