test generation
generateHostParsingTests
	"Generate tests that parse URIs with various hosts."
	"self generateHostParsingTests"
	| testSpecifications |

	testSpecifications := {
		"URI"				"Exception"	"Subclass of URIHostIdentifier"	"Accessor"	"Result"			"Comment"
		{'http://127.0.0.1/'.	nil.			'URIIPv4Address'	.				'octets'.		'#(127 0 0 1)'.	'Normal IPv4 address'}}.

	1 to: testSpecifications size do: [:testNumber |
		Transcript show: testNumber]