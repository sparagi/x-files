accessing
authority
	"Answer my authority, or nil if there is none.
	Because authority is constructed from several different components (userinfo, host, and 
	port), characters which are not allowed in the context of the individual components will
	be percent encoded in this String.  To avoid thinking about the security issues surrounding 
	percent encoding, applications should use userinfo, host, and port directly, instead of this 
	value."
	
	^self hasAuthority 
		ifTrue: [String streamContents: [:s |
			self printAuthorityOn: s]]
		ifFalse: [nil]