instance creation
perElement: aClass
	"Answer a new instance of my class, configured with a partition for the per element namespace of aClass."

	^(self copy)
		elementType: aClass;
		initializePerElementPartition;
		yourself