accessing
changeSetName
	"Answer the name of my associated ChangeSet."
	"We don't hang on to the changeSet itself because my author hates it when obsolete classes linger in the system forever.  If the changeSet has been revoked and was garbage collected, cope."

	^changeSetName