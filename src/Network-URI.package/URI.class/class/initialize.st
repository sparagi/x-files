initialization
initialize
	"Populate CharacterClasses as per RFC 2396."
	"Note that we use explicit sets of characters because RFC 2396 specifically says that these characters are the only ones allowed in the situations listed below. Some locales may include additional characters in, say, isAlpha, but we would still not want to include them here."
	"Watch out; several symbols defined here have structure beyond the allowable characters given."
	"self initialize"
	
	| escaped lowalpha upalpha digit mark reserved alpha alphanum domainlabel scheme unreserved uric uricNoSlash pchar segment relSegment pathSegments userinfo regName anywhere |
	escaped := 
		CharacterClassDefinition constructEscapeHandlers: (Array with: 
			(HexEscapeHandler beginningWith: '%')).
	
	lowalpha :='abcdefghijklmnopqrstuvwxyz'.
	upalpha := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.
	digit := '0123456789'.
	mark := '-_.!~*''()'.
	reserved := ';/?:@&=+$,'.
		
	alpha := lowalpha, upalpha.
	alphanum := alpha, digit.
	domainlabel := alphanum, '-'.
	scheme := alphanum, '+-.'.
	
	unreserved := alphanum, mark.
	
	uric := reserved, unreserved ", escaped".
	uricNoSlash := uric copyWithout: $/ ", escaped".
		
	pchar := unreserved, ':@&=+$,' ", escaped".
	segment := pchar, ';' ", escaped".
	relSegment := segment copyWithout: $: ", escaped".
	pathSegments := segment, '/' ", escaped".
		
	userinfo := unreserved, ';:&=+$,' ", escaped".
	regName := userinfo, '@' ", escaped".
		
	anywhere := uric,  '#' ", escaped".
	
	CharacterClasses := Dictionary new.
	CharacterClasses
		at: #lowalpha
		put: (CharacterClassDefinition toInclude: lowalpha);
		at: #upalpha
		put: (CharacterClassDefinition toInclude: upalpha);
		at: #digit
		put: (CharacterClassDefinition toInclude: digit);
		at: #mark
		put: (CharacterClassDefinition toInclude: mark);
		at: #reserved
		put: (CharacterClassDefinition toInclude: reserved);
		at: #alpha
		put: (CharacterClassDefinition toInclude: alpha);	
		at: #alphanum
		put: (CharacterClassDefinition toInclude: alphanum);	
		at: #domainlabel
		put: (CharacterClassDefinition toInclude: domainlabel);	
		at: #scheme
		put: (CharacterClassDefinition toInclude: scheme);	
		at: #unreserved
		put: (CharacterClassDefinition toInclude: unreserved);		
		at: #uric
		put: (CharacterClassDefinition toInclude: uric andProcess: escaped);
		at: #uricNoSlash
		put: (CharacterClassDefinition toInclude: uricNoSlash andProcess: escaped);
		at: #pchar
		put: (CharacterClassDefinition toInclude: pchar andProcess: escaped);
		at: #segment
		put: (CharacterClassDefinition toInclude: segment andProcess: escaped);
		at: #relSegment
		put: (CharacterClassDefinition toInclude: relSegment andProcess: escaped);
		at: #pathSegments
		put: (CharacterClassDefinition toInclude: pathSegments andProcess: escaped);
		at: #userinfo
		put: (CharacterClassDefinition toInclude: userinfo andProcess: escaped);
		at: #regName
		put: (CharacterClassDefinition toInclude: regName andProcess: escaped);
		at: #anywhere
		put: (CharacterClassDefinition toInclude: anywhere andProcess: escaped).
	
	
