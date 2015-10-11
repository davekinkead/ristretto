require 'ristretto'
require 'minitest/autorun'

describe Ristretto do

  let(:indented_codeblocks) { Ristretto.parse('specs/markdown/indented_codeblocks.md') }

  describe "#execute" do
    it "executes simple ruby code" do
      Ristretto.execute(indented_codeblocks).must_equal "Hello, Ristretto!"
    end

    it "can cope with unbound methods"
  end

  describe "#parse" do
    it "parses markdown indented codeblocks" do
      indented_codeblocks.must_equal "welcome = \"Hello, Ristretto!\"\n# comments\nwelcome"
    end

    it "ignores indented lists"

    it "ignores shell commands prefixed with $"

    it "groks tabbed indents"

    it "parses backticked codeblocks"
  end
end