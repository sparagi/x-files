non-normative examples
testNs5o1example1
	"Example 1 from Namespaces in XML section 5.1. Namespace Scoping."
	
	| doc html head title nsUri |
	doc := XMLDocument fromString: '<?xml version="1.0"?>
<!-- all elements here are explicitly in the HTML namespace -->
<html:html xmlns:html=''http://www.w3.org/TR/REC-html40''>
  <html:head><html:title>Frobnostication</html:title></html:head>
  <html:body><html:p>Moved to 
    <html:a href=''http://frob.com''>here.</html:a></html:p></html:body>
</html:html>'.
	html := doc elementAt: 'html:html'.
	head := html elementAt: 'html:head'.
	title := title elementAt: 'html:title'.
	nsUri := URI fromString: 'http://www.w3.org/TR/REC-html40'.
	self should: [html namespace uri = nsUri].
	self should: [head namespace uri = nsUri].
	self should: [title namespace uri = nsUri].