private
readSchemeFrom: escapingStream
	"Attempt to parse a scheme from escapingStream (conforms to URIStream).  If successful, 
	leave the position of escapingStream after the : and answer the scheme.  If unsuccessful, 
	leave the position of escapingStream where it began and answer nil."
	| scheme |

	(escapingStream peekForAnyIn: #ALPHA) ifTrue: [ | relativePosition |
		relativePosition := 0.
		scheme := escapingStream nextWhileIn: #scheme.	
		relativePosition := scheme size negated.
		(escapingStream peekFor: $:) ifFalse: [
			scheme := nil.
			escapingStream skip: relativePosition]].

	^scheme