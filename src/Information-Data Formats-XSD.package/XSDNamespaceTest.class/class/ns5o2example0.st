non-normative examples
ns5o2example0
	"Example: Applying Namespaces to Elements and Attributes:
	Namespace Defaulting"
	^ '<?xml version="1.0"?>
<!-- elements are in the HTML namespace, in this case by default -->
<html xmlns=''http://www.w3.org/TR/REC-html40''>
  <head><title>Frobnostication</title></head>
  <body><p>Moved to 
    <a href=''http://frob.com''>here</a>.</p></body>
</html>'