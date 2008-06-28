instantiation
fromURIStream: aURIStream withEntireContents: aBoolean
	"Answer an instance of myself parsed from aURIStream."

	| relativePosition scheme |

	"Scan for a scheme."
	relativePosition := 0.
	(aURIStream peekForAnyIn: #alpha) ifTrue: [
		scheme := aURIStream nextWhileIn: #scheme.	
		relativePosition := scheme size negated.
		(aURIStream peekFor: $:) ifFalse: [
			scheme := nil.
			aURIStream skip: relativePosition]].

	"Choose a concrete class based on whether the URI has a hierarchical part or an opaque part."
	^(
		(aURIStream peekFor: $/) 
			ifTrue: [
				aURIStream skipBack.
				HierarchicalURI withScheme: scheme]
			ifFalse: [
				(scheme notNil)
					ifTrue: [OpaqueURI withScheme: scheme]	
					ifFalse: [HierarchicalURI new]]
	)
		initializeFrom: aURIStream withEntireContents: aBoolean