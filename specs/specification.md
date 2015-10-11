# The Ristretto Specification

This specification doubles the code test for the Ristretto gem.

## Indented Codeblocks

Ristretto should parse indented code blocks.  By default, anything inside them will be treated like ruby.

    welcome = "Hello, Ristretto!"

## Multiple Codeblocks

Multiple blocks should be parsed into a single string with the line termination `\n` character appended after each block.

    # comments
    welcome

The last resulting code string should be stripped of trailing whitespace.

## Tabbed Codelocks

TODO 

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