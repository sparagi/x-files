backward compatibility
toText
	"For compatibility with the Url hierarchy."

	| output |

	output _ WritableStream on: String new.
	self printOn: output.
	^output contents
