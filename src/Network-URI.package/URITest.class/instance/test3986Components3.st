examples
test3986Components3
	"From section 7.6."
	| uriString uriObject |

	uriString := 'ftp://cnn.example.com&story=breaking_news@10.0.0.1/top_story.htm'.
	uriObject := URI fromString: uriString.

	self should: [uriObject host asString = '10.0.0.1'].
	
