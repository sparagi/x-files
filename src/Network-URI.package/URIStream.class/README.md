'
	My instances are streams that know how to encode and decode the characters that might appear in a URI, as specified in RFC 2396.

	instance variables:

-	stream	a Stream used to answer messages, sometimes a pointer to self

	class variables:

-	URICharacters		 a Dictionary mapping Strings describing URI character classes to IdentitySets of those characters


	Author: Brenda Larcom <asparagi@hhhh.org>