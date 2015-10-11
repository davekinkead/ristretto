require 'ristretto'
require 'minitest/autorun'

describe Ristretto do

  let(:indented_codeblocks) { Ristretto.parse('specs/markdown/indented_codeblocks.md') }

  describe "#execute" do
    it "executes parsed ruby code" do
      Ristretto.execute(indented_codeblocks).must_equal "Hello, Ristretto!"
    end
  end

  describe "#parse" do
    it "parses markdown indented codeblocks" do
      indented_codeblocks.must_equal "welcome = \"Hello, Ristretto!\"\n# comments\nwelcome"
    end
  end
end