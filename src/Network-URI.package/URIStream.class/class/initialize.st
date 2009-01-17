initialization
initialize
	"Populate URICharacters as per RFC 3986.
	
	Note that we use explicit sets of characters because RFC 3986 specifically says that these 
	characters are the only ones allowed in the situations listed below. Some locales may 
	include additional characters in, say, isAlpha, but we would still not want to include them 
	here.
		
	Watch out; several symbols defined here have structure beyond the allowable characters 
	given."
	"self initialize"

	URICharacters := Dictionary new.

	"Definitions taken straight from RFC 2234, Appendix A."
	URICharacters
		at: #ALPHA
		put: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ' asIdentitySet;
		at: #DIGIT
		put: '0123456789' asIdentitySet.
		
	"Definition taken from RFC 2234, Appendix A, but fudged to meet the needs of RFC 3986.  RFC
	3986 does not redefine this basic character class, but RFC 2234 did not include abcdef, which
	section 2.1 of RFC 3986 says are to be treated as equivalent to ABCDEF when parsing a URI.  
	Therefore, it seemed best to add abcdef here."	
	URICharacters
		at: #HEXDIG
		put: (
			((URICharacters at: #DIGIT) copy) 
				addAll: 'ABCDEFabcdef';
				yourself).

	"Definitions taken straight from RFC 3986, Appendix A.  Since the appendix is written in a 
	top-down style, we need to define the character classes in nearly the reverse of the order 
	in which they appear in the appendix."
	URICharacters
		at: #'sub-delims'
		put: '!$&''()*+,;=' asIdentitySet;
		at: #'gen-delims'
		put: ':/?#[]@' asIdentitySet;
		at: #reserved
		put: (
			((URICharacters at: #'gen-delims') copy) 
				addAll: (URICharacters at: #'sub-delims');
				yourself);
		at: #unreserved
		put: (
			((URICharacters at: #ALPHA) copy) 
				addAll: (URICharacters at: #DIGIT);
				addAll: '-._~';
				yourself).
				
	"Definition taken from RFC 3986, Appendix A, but changed to support my implementation of 
	percent escaping.  My implementation hard codes an expectation for two #HEXDIG characters
	after any legal percent; therefore, #HEXDIG is not needed here."
	URICharacters
		at: #'pct-encoded'	"From context, the pcs in pct-encoded seems to stand for percent."
		put: '%' asIdentitySet.
				
	"Definitions taken straight from RFC 3986, Appendix A."
	URICharacters
		at: #pchar	"From context, the p in pchar seems to stand for path."
		put: (
			((URICharacters at: #unreserved) copy)
				addAll: (URICharacters at: #'pct-encoded');
				addAll: (URICharacters at: #'sub-delims');
				addAll: ':@';
				yourself);
		at: #query
		put: (
			((URICharacters at: #pchar) copy)
				addAll: '/?';
				yourself);				
		at: #fragment
		put: (
			((URICharacters at: #pchar) copy)
				addAll: '/?';
				yourself);
		at: #segment
		put: (URICharacters at: #pchar) copy.
				
	"Definition taken from RFC 3986, Appendix A, but renamed from segment-nz-nc to make 
	more sense as a character class rather than a structured definition."
	URICharacters
		at: #'segment-nc'	"From context, the nc in segment-nc seems to stand for colon."
		put: (
			((URICharacters at: #unreserved) copy)
				addAll: (URICharacters at: #'pct-encoded');
				addAll: (URICharacters at: #'sub-delims');
				addAll: '@';
				yourself).
				
	"Definitions taken straight from RFC 3986, Appendix A."
	URICharacters
		at: #path
		put: (
			((URICharacters at: #segment) copy)
				addAll: '/';
				yourself);
		at: #'reg-name'
		put: (
			((URICharacters at: #unreserved) copy)
				addAll: (URICharacters at: #'pct-encoded');
				addAll: (URICharacters at: #'sub-delims');
				yourself);
		at: #IPv4address
		put: (
			((URICharacters at: #DIGIT) copy)
				addAll: '.';
				yourself);	
		at: #IPv6address
		put: #() asIdentitySet needsWork;
		at: #IPvFuture
		put: #() asIdentitySet needsWork;	
		at: #'IP-literal'
		put: (
			((URICharacters at: #IPv6address) copy)
				addAll: (URICharacters at: #IPvFuture);
				addAll: '[]';
				yourself);
		at: #userinfo
		put: (
			((URICharacters at: #unreserved) copy)
				addAll: (URICharacters at: #'pct-encoded');
				addAll: (URICharacters at: #'sub-delims');
				addAll: ':';
				yourself);
		needsWork;
		at: #scheme
		put: (
			((URICharacters at: #ALPHA) copy)
				addAll: (URICharacters at: #DIGIT);
				addAll: '+-.';
				yourself).
	
	"Definition invented based on RFC 3986, Appendix A."	
	URICharacters
		at: #anywhere
		put: (
			((URICharacters at: #reserved) copy)
				addAll: (URICharacters at: #unreserved);
				addAll: (URICharacters at: #'pct-encoded');
				yourself).