backward compatibility
asUrlRelativeTo: aString
	"For compatibility with the Url hierarchy."

	| oldURI |
	oldURI _ aString asURI.
	(oldURI respondsTo: #resolveRelativeURI:)
		ifTrue: [^oldURI resolveRelativeURI: self]
		ifFalse: [^self]


