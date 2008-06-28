An instance of me may be raised in two situations:

1. A CharacterClassDefinition is being configured such that it will be impossible for a CharacterClassStream to tell whether a given sequence of characters starts an escape sequence.
2. A CharacterClassStream begins to parse an escape sequence, but the contents of the stream cannot complete a valid escape sequence.

For license see https://github.com/sparagi/x-files/blob/master/LICENSE.
