initialization
initialize
	"Populate URICharacters as per RFC 2396."
	"Note that we use explicit sets of characters because RFC 2396 specifically says that these characters are the only ones allowed in the situations listed below. Some locales may include additional characters in, say, isAlpha, but we would still not want to include them here."
	"Watch out; several symbols defined here have structure beyond the allowable characters given."
	"self initialize"

	URICharacters _ Dictionary new.

	URICharacters
		at: 'lowalpha'
		put: 'abcdefghijklmnopqrstuvwxyz' asIdentitySet;
		at: 'upalpha'
		put: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' asIdentitySet;
		at: 'digit'
		put: '0123456789' asIdentitySet;
		at: 'mark'
		put: '-_.!~*''()' asIdentitySet;
		at: 'reserved'
		put: ';/?:@&=+$,' asIdentitySet.

	URICharacters 
		at: 'alpha'
		put: (
			((URICharacters at: 'lowalpha') copy) 
				addAll: (URICharacters at: 'upalpha'); 
				yourself);
		at: 'hex'
		put: (
			((URICharacters at: 'digit') copy)
				addAll: 'ABCDEFabcdef';
				yourself).

	URICharacters 
		at: 'alphanum'
		put: (
			((URICharacters at: 'alpha') copy)
				addAll: (URICharacters at: 'digit');
				yourself);
		at: 'escaped'
		put: (
			((URICharacters at: 'hex') copy) 
				addAll: '%';
				yourself).

	URICharacters 
		at: 'unreserved'
		put: (
			((URICharacters at: 'alphanum') copy)
				addAll: (URICharacters at: 'mark');
				yourself).

	URICharacters
		at: 'uric'
		put: (
			((URICharacters at: 'reserved') copy) 
				addAll: (URICharacters at: 'unreserved'); 
				addAll: (URICharacters at: 'escaped');
				yourself);
		at: 'pchar'
		put: (
			((URICharacters at: 'unreserved') copy)
				addAll: (URICharacters at: 'escaped');
				addAll: ':@&=+$,';
				yourself).

	URICharacters 
		at: 'uricNoSlash'
		put: ((URICharacters at: 'uric') copyWithout: $/);
		at: 'domainlabel'
		put: (
			((URICharacters at: 'alphanum') copy)
				addAll: '-';
				yourself);
		at: 'scheme'
		put: (
			((URICharacters at: 'alphanum') copy)
				addAll: '+-.';
				yourself);
		at: 'segment'
		put: (
			((URICharacters at: 'pchar') copy)
				addAll: ';';
				yourself);
		at: 'userinfo'
		put: (
			((URICharacters at: 'unreserved') copy)
				addAll: (URICharacters at: 'escaped');
				addAll: ';:&=+$,';
				yourself).

	URICharacters 
		at: 'relSegment'
		put: ((URICharacters at: 'segment') copyWithout: $:);
		at: 'pathSegments'
		put: (
			((URICharacters at: 'segment') copy)
				addAll: '/';
				yourself);
		at: 'regName'
		put: (
			((URICharacters at: 'userinfo') copy)
				addAll: '@';
				yourself).

	"Characters not in the anywhere list should never appear anywhere in a URI."
	 URICharacters
		at: 'anywhere'
		put: (
			((URICharacters at: 'uric') copy)
				addAll: '#';
				yourself)