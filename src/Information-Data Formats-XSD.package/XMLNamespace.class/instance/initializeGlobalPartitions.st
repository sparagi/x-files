initialization
initializeGlobalPartitions
	"Populate my instance variables with new global partitions."

	#(#allElements #globalAttributes) do: [:key |
		contents at: key put: Dictionary new]