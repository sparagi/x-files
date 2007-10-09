My instances understand how to transform hex encoded escapes into the appropriate characters.  For example, an instance of me is used to parse hex encoded characters in a URI.

Instance Variables

-	beginMarker		a String which marks the beginning of a name
-	endMarker		a String which marks the end of a name
-	caseMessage		a message which will be sent to every hex encoded string before it is output, to ensure case consistency with the desired context 

For license see https://github.com/sparagi/x-files/blob/master/LICENSE.
