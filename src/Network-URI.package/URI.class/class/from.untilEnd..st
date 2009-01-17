instantiation
from: aStream untilEnd: endRequired
	"Answer an instance of myself parsed from aStream (conforms to Stream).  If 
	endRequired (a Boolean) is true, raise an error if, after parsing the new instance, 
	aStream is not atEnd."
	| escapingStream scheme |
	
	escapingStream := self escapingStreamOn: aStream.
	scheme := self readSchemeFrom: escapingStream.
	^(self withScheme: scheme) readFrom: escapingStream untilEnd: endRequired