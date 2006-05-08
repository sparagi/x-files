non-normative examples
testNs5o2example1
	"Example 1 from Namespaces in XML section 5.2. Namespace Defaulting."
	
	| doc html head title nsUri |
	doc := XMLDocument fromString: '<?xml version="1.0"?>
<!-- elements are in the HTML namespace, in this case by default -->
<html xmlns=''http://www.w3.org/TR/REC-html40''>
  <head><title>Frobnostication</title></head>
  <body><p>Moved to 
    <a href=''http://frob.com''>here</a>.</p></body>
</html>'.
	html := doc elementAt: 'html'.
	head := html elementAt: 'head'.
	title := title elementAt: 'title'.
	nsUri := URI fromString: 'http://www.w3.org/TR/REC-html40'.
	self should: [html namespace uri = nsUri].
	self should: [head namespace uri = nsUri].
	self should: [title namespace uri = nsUri].