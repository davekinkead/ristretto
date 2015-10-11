# Ristretto

Literate Ruby inspired by Coffeescript.

Literate programming represents a completely difference perspective concerning the structure of computer programs.  Instead of code being instructions for what a computer should do, think of literate programming as explainations to other humans of what we want a computer to do.

> The practitioner of literate programming can be regarded as an essayist, whose main concern is with exposition and excellence of style. Such an author, with thesaurus in hand, chooses the names of variables carefully and explains what each variable means. He or she strives for a program that is comprehensible because its concepts have been introduced in an order that is best for human understanding, using a mixture of formal and informal methods that reinforce each other.
>
> --  Donald Knuth. "Literate Programming (1984)" in Literate Programming. CSLI, 1992, pg. 99.


## Installation

Ristretto is designed to work from the command line, so fire up your terminal and type: 

    $ gem install ristretto


## Usage

Take a blog post, documentation, or other piece of text about ruby code written in markdown and pass the file to ristretto.

    $ ristretto blog-post.rb.md

Ristretto will parse your markdown and try to execute anything in the codeblocks with ruby.  You can read the [full specifications here](specs/specification.md).

**TODO**

Strictly transpile codeblocks. Any codeblock without ` ```ruby` will be ignored.

    $ ristretto -s blog-post.rb.md

Transpile ristretto into ruby and pipe it to stdout with the `-t` flag.

    $ ristretto -t blog-post-with-code.rb.md > code-from-the-post.rb

Recursively parse required ristretto files so you can include code from other blog posts.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/ristretto/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
