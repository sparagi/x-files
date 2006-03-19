initialization
initializePerElementPartition
	"Populate my instance variables with a new per element partition."

	#(#allElements #globalAttributes) do: [:key |
		contents at: key put: Dictionary new]