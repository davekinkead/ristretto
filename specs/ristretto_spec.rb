require 'ristretto'
require 'minitest/autorun'

describe Ristretto do

  let(:parsed_markdown) { Ristretto.parse('specs/specification.md') }

  describe "#execute" do
    it "executes simple ruby code" do
      Ristretto.execute(parsed_markdown).must_equal "Hello, Ristretto!"
    end

    it "parsed required ristretto files"
  end

  describe "#parse" do
    it "parses markdown according to the Ristretto specification" do
      parsed_markdown.must_equal "welcome = \"Hello, Ristretto!\"\n# comments\nwelcome"
    end

    it "groks tabbed indents"

    it "parses backticked codeblocks"
  end
end