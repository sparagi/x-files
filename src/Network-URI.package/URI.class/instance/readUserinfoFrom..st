initialization
readUserinfoFrom: escapingStream
	"Parse my userinfo from escapingStream.
	I assume escapingStream's position is at the beginning of the authority (i.e. after the //). 
	If I am successful, I leave escapingStream's position after the @; if I am unsuccessful, I 
	restore escapingStream's position to its original state."
	| originalPosition |

	originalPosition := escapingStream position.
	userinfo := escapingStream nextWhileIn: #userinfo.	
	(escapingStream peekFor: $@) ifFalse: [
		"There isn't any userinfo."
		userinfo := nil.
		escapingStream position: originalPosition].
