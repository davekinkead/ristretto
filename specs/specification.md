# The Ristretto Specification

This specification doubles the code test for the Ristretto gem.  If it is in here, it should be passing the tests.

## Indented Codeblocks

Ristretto should parse indented code blocks.  By default, anything inside them will be treated like ruby.

    espresso = ('coffee' + 'water').bytes.reduce :+

## Tabbed & Multiple Codeblocks

Multiple blocks should be parsed into a single string with the line termination `\n` character appended after each block.

		ristretto = espresso - 'water'.bytes.reduce(:+)/2

The last resulting code string should be stripped of trailing whitespace.

## Fenced Codeblocks

TODO

## Lists

One thing Ristretto shouldn't do is parse indented lists.

  - List like these
    - but with sublists 4 or more spaces in.
    + starting with any of the markdown list markers `-`, `+`, or `*`.

    * and even those with a preceding blank line.        

## Non Ruby Code

Somethimes, you might need to include more than just Ruby in a codeblock.  As such, Ristretto should ignore specific types of code such as shell or bash indicated by `$`

    $ youknown -? like this