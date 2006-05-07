accessing
nextPutAll: aSequenceableCollection
	"Put each of the elements of aSequenceableCollection on my stream at the next position. Answer aSequenceableCollection."

	^stream nextPutAll: aSequenceableCollection