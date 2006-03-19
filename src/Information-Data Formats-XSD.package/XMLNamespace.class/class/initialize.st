initialization
initialize
	"Initialize my Instances class variable."

	super initialize.
	Instances ifNil: [ | xml |
		Instances := Dictionary new ].