# Ristretto

Literate Ruby inspired by Coffeescript.

> The practitioner of literate programming can be regarded as an essayist, whose main concern is with exposition and excellence of style. Such an author, with thesaurus in hand, chooses the names of variables carefully and explains what each variable means. He or she strives for a program that is comprehensible because its concepts have been introduced in an order that is best for human understanding, using a mixture of formal and informal methods that reinforce each other.
>
> --  Donald Knuth. "Literate Programming (1984)" in Literate Programming. CSLI, 1992, pg. 99.


## Installation

Ristretto is designed to work from the command line, so install it with: 

    $ gem install ristretto


## Usage

Write a blog post or documentation explaining your code in some flavour of markdown.  Include the code as per markdown syntax.

    $ ristretto blog-post.rb.md

Ristretto will parse your markdown and try to execute anything in the codeblocks with ruby.

**TODO**

Strictly transpile codeblocks. Any codeblock without ````ruby` will be ignored.

    $ ristretto -s blog-post.rb.md

Transpile ristretto into ruby and pipe it to stdout with the `-t` flag.

    $ ristretto -t blog-post-with-code.rb.md > code-from-the-post.rb


## Contributing

1. Fork it ( https://github.com/[my-github-username]/ristretto/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
