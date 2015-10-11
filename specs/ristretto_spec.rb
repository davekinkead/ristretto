require 'ristretto'
require 'minitest/autorun'

describe Ristretto do
  it "parses markdown indented codeblocks" do
    Ristretto.parse('specs/markdown/indented_codeblocks.md').must_equal "p \"Hello, World!\"\n# comments"
  end
end