processing
invoke
	"Create classes & methods."

	| newChanges changeHolder oldChanges |
	self reset.
	
	"Pick a name for my ChangeSet, based on classPrefix."
	changeSetName _ ChangeSet uniqueNameLike: classPrefix.
	
	"Create the ChangeSet."
	newChanges _ ChangeSorter basicNewChangeSet: changeSetName.
	newChanges beIsolationSetFor: nil.		"Fool it into being revertable."
	
	"Save the old changes."
	changeHolder _ (ChangeSet respondsTo: #newChanges:)
						ifTrue: [ChangeSet]
						ifFalse: [Smalltalk].
	oldChanges _ (ChangeSet respondsTo: #current)
						ifTrue: [ChangeSet current]
						ifFalse: [Smalltalk changes].


	"Add my stuff to the ChangeSet."
	changeHolder newChanges: newChanges.
	[
		self processAttributes.
		self processElements
	] ensure: [changeHolder newChanges: oldChanges].
	