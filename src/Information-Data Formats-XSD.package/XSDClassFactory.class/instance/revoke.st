revoking
revoke
	"Revoke classes & methods I created."

	| changeSet |
	changeSetName ifNil: [self notify: 'I planned no changes'].
	changeSet _ ChangeSorter changeSetNamed: changeSetName.
	changeSet ifNil: [self notify: 'I made no changes'].
	
	changeSet revoke
