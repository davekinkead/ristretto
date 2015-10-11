require 'ristretto'
require 'minitest/autorun'

describe Ristretto do

  let(:parsed_markdown) { Ristretto.parse('specs/specification.md') }

  describe "#execute" do
    it "executes simple ruby code" do
      Ristretto.execute(parsed_markdown).must_equal 890
    end

    it "parsed required ristretto files"
  end

  describe "#parse" do
    it "parses markdown according to the Ristretto specification" do
      parsed_markdown.must_equal "espresso = ('coffee' + 'water').bytes.reduce :+\nristretto = espresso - 'water'.bytes.reduce(:+)/2"
    end

    it "parses backticked codeblocks"
  end
end