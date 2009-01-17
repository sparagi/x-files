'
	My instances represent IPv4 network addresses, used to represent a host in a URI.  

	RFC 2396 allows 1 or more digits in each octet of the IP address, which would allow octets such as 256 or 1004, but clearly each octet of an IPv4 address must fit in 1 byte, i.e. be between 0 and 255.


	instance variables:

-	address		4 bytes representing an IPv4 network address


	Author: Brenda Larcom <asparagi@hhhh.org>