instance creation
htmlEscapeHandler
	"Answer an instance of one of my subclasses, configured for handling escaped HTML entities as defined at http://www.w3.org/TR/REC-html40/sgml/entities.html."

	| entityDictionary |
	entityDictionary _ Dictionary new.
	entityDictionary
		"Section 24.2.1"
		at: 'nbsp'	put: (Character value: 160);
		at: 'iexcl'	put: (Character value: 161);
		at: 'cent'	put: (Character value: 162);
		at: 'pound'	put: (Character value: 163);
		at: 'curren'	put: (Character value: 164);
		at: 'yen'	put: (Character value: 165);
		at: 'brvbar'	put: (Character value: 166);
		at: 'sect'	put: (Character value: 167);
		at: 'uml'	put: (Character value: 168);
		at: 'copy'	put: (Character value: 169);
		at: 'ordf'	put: (Character value: 170);
		at: 'laquo'	put: (Character value: 171);
		at: 'not'		put: (Character value: 172);
		at: 'shy'	put: (Character value: 173);
		at: 'reg'		put: (Character value: 174);
		at: 'macr'	put: (Character value: 175);
		at: 'deg'		put: (Character value: 176);
		at: 'plusmn'	put: (Character value: 177);
		at: 'sup2'	put: (Character value: 178);
		at: 'sup3'	put: (Character value: 179);
		at: 'acute'	put: (Character value: 180);
		at: 'micro'	put: (Character value: 181);
		at: 'para'	put: (Character value: 182);
		at: 'middot'	put: (Character value: 183);
		at: 'cedil'	put: (Character value: 184);
		at: 'sup1'	put: (Character value: 185);
		at: 'ordm'	put: (Character value: 186);
		at: 'raquo'	put: (Character value: 187);
		at: 'frac14'	put: (Character value: 188);
		at: 'frac12'	put: (Character value: 189);
		at: 'frac34'	put: (Character value: 190);
		at: 'iquest'	put: (Character value: 191);
		at: 'Agrave'	put: (Character value: 192);
		at: 'Aacute'	put: (Character value: 193);
		at: 'Acirc'	put: (Character value: 194);
		at: 'Atilde'	put: (Character value: 195);
		at: 'Auml'	put: (Character value: 196);
		at: 'Aring'	put: (Character value: 197);
		at: 'AElig'	put: (Character value: 198);
		at: 'Ccedil'	put: (Character value: 199);
		at: 'Egrave'	put: (Character value: 200);
		at: 'Eacute'	put: (Character value: 201);
		at: 'Ecirc'	put: (Character value: 202);
		at: 'Euml'	put: (Character value: 203);
		at: 'Igrave'	put: (Character value: 204);
		at: 'Iacute'	put: (Character value: 205);
		at: 'Icirc'	put: (Character value: 206);
		at: 'Iuml'	put: (Character value: 207);
		at: 'ETH'	put: (Character value: 208);
		at: 'Ntilde'	put: (Character value: 209);
		at: 'Ograve'	put: (Character value: 210);
		at: 'Oacute'	put: (Character value: 211);
		at: 'Ocirc'	put: (Character value: 212);
		at: 'Otilde'	put: (Character value: 213);
		at: 'Ouml'	put: (Character value: 214);
		at: 'times'	put: (Character value: 215);
		at: 'Oslash'	put: (Character value: 216);
		at: 'Ugrave'	put: (Character value: 217);
		at: 'Uacute'	put: (Character value: 218);
		at: 'Ucirc'	put: (Character value: 219);
		at: 'Uuml'	put: (Character value: 220);
		at: 'Yacute'	put: (Character value: 221);
		at: 'THORN'	put: (Character value: 222);
		at: 'szlig'	put: (Character value: 223);
		at: 'agrave'	put: (Character value: 224);
		at: 'aacute'	put: (Character value: 225);
		at: 'acirc'	put: (Character value: 226);
		at: 'atilde'	put: (Character value: 227);
		at: 'auml'	put: (Character value: 228);
		at: 'aring'	put: (Character value: 229);
		at: 'aelig'	put: (Character value: 230);
		at: 'ccedil'	put: (Character value: 231);
		at: 'egrave'	put: (Character value: 232);
		at: 'eacute'	put: (Character value: 233);
		at: 'ecirc'	put: (Character value: 234);
		at: 'euml'	put: (Character value: 235);
		at: 'igrave'	put: (Character value: 236);
		at: 'iacute'	put: (Character value: 237);
		at: 'icirc'	put: (Character value: 238);
		at: 'iuml'	put: (Character value: 239);
		at: 'eth'		put: (Character value: 240);
		at: 'ntilde'	put: (Character value: 241);
		at: 'ograve'	put: (Character value: 242);
		at: 'oacute'	put: (Character value: 243);
		at: 'ocirc'	put: (Character value: 244);
		at: 'otilde'	put: (Character value: 245);
		at: 'ouml'	put: (Character value: 246);
		at: 'divide'	put: (Character value: 247);
		at: 'oslash'	put: (Character value: 248);
		at: 'ugrave'	put: (Character value: 249);
		at: 'uacute'	put: (Character value: 250);
		at: 'ucirc'	put: (Character value: 251);
		at: 'uuml'	put: (Character value: 252);
		at: 'yacute'	put: (Character value: 253);
		at: 'thorn'	put: (Character value: 254);
		at: 'yuml'	put: (Character value: 255);

		"other"

		at: 'amp'	put: $&;
		at: 'lt'		put: $<;
		at: 'gt'		put: $>;
		needsWork.

	^NamedEscapeHandler beginningWith: '&' endingWith: ';' usingNames: entityDictionary